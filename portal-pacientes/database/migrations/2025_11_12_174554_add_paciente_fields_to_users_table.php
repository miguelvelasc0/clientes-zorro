<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     * 
     * Agrega campos para relacionar el usuario con el paciente en la base de datos legada
     */
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            // Nombre del paciente que coincide con el campo 'paciente' en la tabla notas
            // Este campo permite relacionar el usuario autenticado con sus estudios
            $table->string('nombre_paciente', 40)->nullable()->after('email');
            
            // Campo adicional para almacenar el número de orden si es necesario
            $table->bigInteger('numero_orden')->nullable()->after('nombre_paciente');
            
            // Índice para búsquedas rápidas
            $table->index('nombre_paciente');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropIndex(['nombre_paciente']);
            $table->dropColumn(['nombre_paciente', 'numero_orden']);
        });
    }
};
