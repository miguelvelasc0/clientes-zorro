<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     * 
     * Tabla pivot para relacionar usuarios con múltiples pacientes
     * Útil si un usuario necesita acceder a estudios de varios pacientes
     */
    public function up(): void
    {
        Schema::create('paciente_usuario', function (Blueprint $table) {
            $table->id();
            
            // Relación con la tabla users
            $table->foreignId('user_id')
                ->constrained()
                ->onDelete('cascade');
            
            // Nombre del paciente en la base de datos legada (tabla notas)
            // Este campo debe coincidir exactamente con el campo 'paciente' en la tabla notas
            $table->string('nombre_paciente', 40);
            
            // Número de orden opcional para filtrar por orden específica
            $table->bigInteger('numero_orden')->nullable();
            
            // Sucursal opcional para filtrar por sucursal
            $table->string('sucursal', 64)->nullable();
            
            // Timestamps
            $table->timestamps();
            
            // Índices para búsquedas rápidas
            $table->index('user_id');
            $table->index('nombre_paciente');
            $table->index(['user_id', 'nombre_paciente']);
            
            // Evitar duplicados: un usuario no puede tener el mismo paciente dos veces
            $table->unique(['user_id', 'nombre_paciente']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('paciente_usuario');
    }
};
