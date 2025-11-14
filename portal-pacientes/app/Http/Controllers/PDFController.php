<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Nota;
use App\Services\ResultadoEstudioService;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

/**
 * Controlador para generar PDFs de resultados de estudios
 * 
 * Este controlador maneja la exportación a PDF de:
 * - Resultados de una nota completa
 * - Resultados de un estudio específico
 */
class PDFController extends Controller
{
    protected $resultadoService;
    
    /**
     * Constructor: inyectar el servicio de resultados
     */
    public function __construct(ResultadoEstudioService $resultadoService)
    {
        $this->resultadoService = $resultadoService;
        
        // No requerir autenticación tradicional, permitir acceso simplificado también
    }
    
    /**
     * Generar PDF con los resultados de una nota completa
     * 
     * Verifica que el usuario tenga acceso a esta nota (tradicional o simplificado)
     * 
     * @param int $id ID de la nota
     * @return \Illuminate\Http\Response
     */
    public function nota($id)
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
            abort(403, 'Debes iniciar sesión para acceder a esta nota.');
        }
        
        // Obtener estudios y resultados
        $estudios = $nota->estudios();
        $resultados = $this->resultadoService->obtenerResultadosDeNota($nota);
        
        // Generar el PDF usando la vista
        $pdf = Pdf::loadView('pdf.nota', [
            'nota' => $nota,
            'estudios' => $estudios,
            'resultados' => $resultados,
        ]);
        
        // Configurar el nombre del archivo
        $nombreArchivo = 'Resultados_' . $nota->numero . '_' . $nota->paciente . '.pdf';
        
        // Retornar el PDF para descarga
        return $pdf->download($nombreArchivo);
    }
    
    /**
     * Generar PDF de un estudio específico
     * 
     * Verifica que el usuario tenga acceso a esta nota (tradicional o simplificado)
     * 
     * @param int $notaId ID de la nota
     * @param int $claveEstudio Clave del estudio
     * @return \Illuminate\Http\Response
     */
    public function estudio($notaId, $claveEstudio)
    {
        // Buscar la nota
        $nota = Nota::findOrFail($notaId);
        
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
            abort(403, 'Debes iniciar sesión para acceder a esta nota.');
        }
        
        // Buscar el estudio
        $estudio = \App\Models\Estudio::where('clave', $claveEstudio)->firstOrFail();
        
        // Obtener el resultado
        $resultado = $this->resultadoService->obtenerResultadoPorOrden(
            $claveEstudio,
            $nota->numero,
            $nota->sucursal
        );
        
        if (!$resultado) {
            abort(404, 'Resultado no encontrado');
        }
        
        // Generar el PDF
        $pdf = Pdf::loadView('pdf.estudio', [
            'nota' => $nota,
            'estudio' => $estudio,
            'resultado' => $resultado,
        ]);
        
        // Nombre del archivo
        $nombreArchivo = 'Resultado_' . $estudio->estudio . '_' . $nota->numero . '.pdf';
        
        return $pdf->download($nombreArchivo);
    }
}
