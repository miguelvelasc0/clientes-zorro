<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Helpers\PasswordHelper;
use App\Models\Nota;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

/**
 * Controlador para el acceso simplificado usando número de nota
 * 
 * Sistema de acceso que no requiere registro:
 * - Usuario: número de nota
 * - Contraseña: primeras 3 y últimas 3 letras del nombre del paciente
 */
class AccesoController extends Controller
{
    /**
     * Mostrar el formulario de acceso
     * 
     * @return \Illuminate\View\View
     */
    public function mostrarFormulario()
    {
        // Si ya hay una nota en sesión, redirigir a estudios
        if (Session::has('nota_id')) {
            return redirect()->route('estudios.index');
        }
        
        return view('acceso.login');
    }
    
    /**
     * Validar y procesar el acceso
     * 
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function acceder(Request $request)
    {
        // Validar los datos del formulario
        $request->validate([
            'numero_nota' => 'required|numeric',
            'password' => 'required|string|min:6|max:6',
        ], [
            'numero_nota.required' => 'El número de nota es requerido',
            'numero_nota.numeric' => 'El número de nota debe ser numérico',
            'password.required' => 'La contraseña es requerida',
            'password.min' => 'La contraseña debe tener 6 caracteres',
            'password.max' => 'La contraseña debe tener 6 caracteres',
        ]);
        
        $numeroNota = $request->input('numero_nota');
        $password = strtoupper(trim($request->input('password'))); // Convertir a mayúsculas y quitar espacios
        
        // Buscar la nota en la base de datos legada
        $nota = Nota::where('numero', $numeroNota)->first();
        
        if (!$nota) {
            return back()->withErrors([
                'numero_nota' => 'El número de nota no existe en el sistema.',
            ])->withInput();
        }
        
        // Generar la contraseña esperada usando el helper
        $passwordEsperado = PasswordHelper::generarPassword($nota->paciente);
        
        if ($passwordEsperado === null) {
            return back()->withErrors([
                'numero_nota' => 'El nombre del paciente no tiene suficientes letras para generar la contraseña (mínimo 6 letras).',
            ])->withInput();
        }
        
        // Verificar la contraseña
        if (!PasswordHelper::validarPassword($password, $nota->paciente)) {
            return back()->withErrors([
                'password' => 'La contraseña es incorrecta.',
            ])->withInput();
        }
        
        // Almacenar la nota en sesión
        Session::put('nota_id', $nota->id);
        Session::put('nota_numero', $nota->numero);
        Session::put('nota_paciente', $nota->paciente);
        
        // Redirigir a la lista de estudios
        return redirect()->route('estudios.index')
            ->with('success', 'Acceso exitoso. Bienvenido, ' . $nota->paciente);
    }
    
    /**
     * Cerrar sesión y limpiar datos de la nota
     * 
     * @return \Illuminate\Http\RedirectResponse
     */
    public function salir()
    {
        Session::forget(['nota_id', 'nota_numero', 'nota_paciente']);
        
        return redirect()->route('acceso.login')
            ->with('success', 'Sesión cerrada correctamente.');
    }
}
