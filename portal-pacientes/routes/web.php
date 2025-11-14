<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

// Ruta raíz: redirigir al acceso simplificado
Route::get('/', function () {
    return redirect()->route('acceso.login');
});

// Rutas de acceso simplificado (sin autenticación tradicional)
Route::get('/acceso', [\App\Http\Controllers\AccesoController::class, 'mostrarFormulario'])->name('acceso.login');
Route::post('/acceso', [\App\Http\Controllers\AccesoController::class, 'acceder'])->name('acceso.validar');
Route::get('/acceso/salir', [\App\Http\Controllers\AccesoController::class, 'salir'])->name('acceso.salir');

// Rutas para estudios (funcionan con ambos sistemas de acceso)
Route::get('/estudios', [\App\Http\Controllers\EstudioController::class, 'index'])->name('estudios.index');
Route::get('/estudios/buscar', [\App\Http\Controllers\EstudioController::class, 'buscar'])->name('estudios.buscar');
Route::get('/estudios/{id}', [\App\Http\Controllers\EstudioController::class, 'show'])->name('estudios.show');

// Rutas para exportar PDFs (funcionan con ambos sistemas de acceso)
Route::get('/pdf/nota/{id}', [\App\Http\Controllers\PDFController::class, 'nota'])->name('pdf.nota');
Route::get('/pdf/estudio/{notaId}/{claveEstudio}', [\App\Http\Controllers\PDFController::class, 'estudio'])->name('pdf.estudio');

// Rutas de autenticación tradicional (opcional, para administradores)
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
