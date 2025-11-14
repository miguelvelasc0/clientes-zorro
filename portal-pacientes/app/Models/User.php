<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

/**
 * Modelo de Usuario del sistema
 * 
 * Relaciona usuarios autenticados con pacientes en la base de datos legada
 */
class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'nombre_paciente',
        'numero_orden',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }
    
    /**
     * Relación con la tabla pivot paciente_usuario
     * 
     * Permite que un usuario acceda a estudios de varios pacientes
     * 
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function pacientesRelacionados()
    {
        return $this->hasMany(PacienteUsuario::class, 'user_id');
    }
    
    /**
     * Obtener todas las notas del usuario autenticado
     * 
     * Busca notas que coincidan con el nombre_paciente del usuario
     * o con los pacientes asociados en la tabla pivot
     * 
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function notas()
    {
        $nombresPacientes = [];
        
        // Agregar nombre_paciente directo si existe
        if ($this->nombre_paciente) {
            $nombresPacientes[] = $this->nombre_paciente;
        }
        
        // Agregar pacientes de la tabla pivot
        $pacientesPivot = $this->pacientesRelacionados()->pluck('nombre_paciente')->toArray();
        $nombresPacientes = array_merge($nombresPacientes, $pacientesPivot);
        
        // Eliminar duplicados
        $nombresPacientes = array_unique($nombresPacientes);
        
        if (empty($nombresPacientes)) {
            // Retornar una consulta vacía si no hay pacientes asociados
            return Nota::whereRaw('1 = 0');
        }
        
        return Nota::whereIn('paciente', $nombresPacientes);
    }
    
    /**
     * Verificar si el usuario tiene acceso a una nota específica
     * 
     * @param \App\Models\Nota $nota
     * @return bool
     */
    public function puedeAccederANota(Nota $nota): bool
    {
        // Verificar si el nombre del paciente coincide directamente
        if ($this->nombre_paciente && $nota->paciente === $this->nombre_paciente) {
            return true;
        }
        
        // Verificar si está en la tabla pivot
        $pacienteRelacionado = PacienteUsuario::where('user_id', $this->id)
            ->where('nombre_paciente', $nota->paciente)
            ->exists();
        
        return $pacienteRelacionado;
    }
}
