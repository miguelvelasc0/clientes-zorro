<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

/**
 * Modelo para la tabla pivot paciente_usuario
 * 
 * Relaciona usuarios del sistema con pacientes en la base de datos legada
 * Permite que un usuario acceda a estudios de múltiples pacientes
 */
class PacienteUsuario extends Pivot
{
    /**
     * Indica si el modelo debe usar timestamps
     * 
     * @var bool
     */
    public $timestamps = true;
    
    /**
     * Campos que pueden ser asignados masivamente
     * 
     * @var array
     */
    protected $fillable = [
        'user_id',
        'nombre_paciente',
        'numero_orden',
        'sucursal',
    ];
    
    /**
     * Relación con el modelo User
     * 
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
    /**
     * Obtener las notas asociadas a este paciente
     * 
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function notas()
    {
        return Nota::where('paciente', $this->nombre_paciente);
    }
}

