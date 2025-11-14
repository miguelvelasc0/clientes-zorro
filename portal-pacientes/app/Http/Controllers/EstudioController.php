<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Nota;
use App\Services\ResultadoEstudioService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

/**
 * Controlador para gestionar la visualización de estudios del paciente
 * 
 * Este controlador maneja:
 * - Listado de notas/estudios del paciente autenticado
 * - Detalle de una nota específica con sus resultados
 */
class EstudioController extends Controller
{
    protected $resultadoService;
    
    /**
     * Constructor: inyectar el servicio de resultados
     */
    public function __construct(ResultadoEstudioService $resultadoService)
    {
        $this->resultadoService = $resultadoService;
        
        // No requerir autenticación tradicional, usaremos middleware personalizado
        // que permite tanto autenticación tradicional como acceso por nota
    }
    
    /**
     * Mostrar el listado de estudios del paciente
     * 
     * Funciona tanto con autenticación tradicional como con acceso simplificado por nota
     * 
     * @return \Illuminate\View\View
     */
    public function index()
    {
        // Verificar si hay acceso por sesión (acceso simplificado)
        if (Session::has('nota_id')) {
            // Acceso simplificado: mostrar solo la nota de la sesión
            $nota = Nota::find(Session::get('nota_id'));
            
            if ($nota) {
                // Retornar una colección paginada con una sola nota
                $notas = collect([$nota]);
                $notas = new \Illuminate\Pagination\LengthAwarePaginator(
                    $notas,
                    1,
                    15,
                    1,
                    ['path' => request()->url()]
                );
                
                return view('estudios.index', [
                    'notas' => $notas,
                    'acceso_simplificado' => true,
                ]);
            }
        }
        
        // Autenticación tradicional: obtener el usuario autenticado
        if (Auth::check()) {
            $user = Auth::user();
            
            // Obtener las notas del usuario usando la relación
            $notas = $user->notas()
                ->orderBy('fecha', 'desc')
                ->paginate(15);
            
            return view('estudios.index', [
                'notas' => $notas,
                'acceso_simplificado' => false,
            ]);
        }
        
        // Si no hay ningún tipo de acceso, redirigir al login
        return redirect()->route('acceso.login');
    }
    
    /**
     * Mostrar el detalle de una nota específica con todos sus resultados
     * 
     * Verifica que el usuario tenga acceso a esta nota (tradicional o simplificado)
     * 
     * @param int $id ID de la nota
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        // Buscar la nota
        $nota = Nota::findOrFail($id);
        
        // Verificar acceso según el tipo de autenticación
        if (Session::has('nota_id')) {
            // Acceso simplificado: verificar que la nota coincida con la sesión
            if (Session::get('nota_id') != $nota->id) {
                abort(403, 'No tienes permiso para acceder a esta nota.');
            }
        } elseif (Auth::check()) {
            // Autenticación tradicional: verificar con el usuario
            $user = Auth::user();
            if (!$user->puedeAccederANota($nota)) {
                abort(403, 'No tienes permiso para acceder a esta nota.');
            }
        } else {
            // No hay ningún tipo de acceso
            return redirect()->route('acceso.login');
        }
        
        // Obtener todos los estudios asociados a esta nota
        $estudios = $nota->estudios();
        
        // Obtener los resultados de cada estudio
        $resultados = $this->resultadoService->obtenerResultadosDeNota($nota);
        
        return view('estudios.show', [
            'nota' => $nota,
            'estudios' => $estudios,
            'resultados' => $resultados,
        ]);
    }
    
    /**
     * Buscar estudios por nombre de paciente
     * 
     * La búsqueda se limita según el tipo de acceso (tradicional o simplificado)
     * 
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\View\View
     */
    public function buscar(Request $request)
    {
        $query = $request->input('q', '');
        
        if (empty($query)) {
            return redirect()->route('estudios.index');
        }
        
        // Acceso simplificado: solo buscar en la nota de la sesión
        if (Session::has('nota_id')) {
            $nota = Nota::find(Session::get('nota_id'));
            
            if ($nota && stripos($nota->paciente, $query) !== false) {
                $notas = collect([$nota]);
                $notas = new \Illuminate\Pagination\LengthAwarePaginator(
                    $notas,
                    1,
                    15,
                    1,
                    ['path' => request()->url(), 'query' => ['q' => $query]]
                );
                
                return view('estudios.index', [
                    'notas' => $notas,
                    'query' => $query,
                    'acceso_simplificado' => true,
                ]);
            } else {
                // No hay coincidencias
                $notas = new \Illuminate\Pagination\LengthAwarePaginator(
                    collect([]),
                    0,
                    15,
                    1,
                    ['path' => request()->url(), 'query' => ['q' => $query]]
                );
                
                return view('estudios.index', [
                    'notas' => $notas,
                    'query' => $query,
                    'acceso_simplificado' => true,
                ]);
            }
        }
        
        // Autenticación tradicional
        if (Auth::check()) {
            $user = Auth::user();
            
            // Buscar notas que coincidan con el nombre del paciente
            // pero solo dentro de las notas a las que el usuario tiene acceso
            $notas = $user->notas()
                ->where('paciente', 'LIKE', "%{$query}%")
                ->orderBy('fecha', 'desc')
                ->paginate(15)
                ->appends(['q' => $query]);
            
            return view('estudios.index', [
                'notas' => $notas,
                'query' => $query,
                'acceso_simplificado' => false,
            ]);
        }
        
        // Si no hay acceso, redirigir al login
        return redirect()->route('acceso.login');
    }
}
