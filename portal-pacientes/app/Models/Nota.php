<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Modelo para la tabla 'notas' en la base de datos legada (dbf_sync)
 * 
 * Esta tabla contiene el listado de pacientes con sus estudios realizados.
 * Cada nota representa una solicitud de estudios para un paciente.
 */
class Nota extends Model
{
    // Conexión a la base de datos legada
    protected $connection = 'legacy';
    
    // Nombre de la tabla
    protected $table = 'notas';
    
    // Desactivar timestamps ya que la tabla no tiene created_at/updated_at
    public $timestamps = false;
    
    // Campos que pueden ser asignados masivamente
    protected $fillable = [
        'sucursal',
        'numero',
        'fecha',
        'paciente',
        'edad',
        'sexo',
        'medico',
        'fnaci',
        // Campos de estudios (est1-est15, cant1-cant15, etc.)
        'est1', 'est2', 'est3', 'est4', 'est5',
        'est6', 'est7', 'est8', 'est9', 'est10',
        'est11', 'est12', 'est13', 'est14', 'est15',
        'cant1', 'cant2', 'cant3', 'cant4', 'cant5',
        'cant6', 'cant7', 'cant8', 'cant9', 'cant10',
        'cant11', 'cant12', 'cant13', 'cant14', 'cant15',
        'descrip1', 'descrip2', 'descrip3', 'descrip4', 'descrip5',
        'descrip6', 'descrip7', 'descrip8', 'descrip9', 'descrip10',
        'descrip11', 'descrip12', 'descrip13', 'descrip14', 'descrip15',
    ];
    
    // Casts para campos de fecha
    protected $casts = [
        'fecha' => 'datetime',
        'fnaci' => 'datetime',
        'entre' => 'datetime',
        'fpagada' => 'datetime',
        'fanterior' => 'datetime',
        'fsiguiente' => 'datetime',
    ];
    
    /**
     * Obtener todos los estudios asociados a esta nota
     * Los estudios se encuentran en los campos est1-est15
     * 
     * @return array Array con los IDs de estudios (claves) que no sean null
     */
    public function getEstudiosIds(): array
    {
        $estudios = [];
        
        // Recorrer todos los campos de estudio (est1 a est15)
        for ($i = 1; $i <= 15; $i++) {
            $campo = 'est' . $i;
            if (!empty($this->$campo)) {
                $estudios[] = $this->$campo;
            }
        }
        return $estudios;
    }
    
    /**
     * Obtener información completa de los estudios asociados
     * 
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function estudios()
    {
        $ids = $this->getEstudiosIds();
        
        if (empty($ids)) {
            return collect([]);
        }
        
        return Estudio::whereIn('clave', $ids)->get();
    }
    
    /**
     * Obtener los usuarios que tienen acceso a esta nota
     * 
     * Busca usuarios cuyo nombre_paciente coincida con el paciente de esta nota
     * o que tengan este paciente asociado en la tabla pivot
     * 
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function usuarios()
    {
        // Buscar usuarios con nombre_paciente directo
        $usuariosDirectos = User::where('nombre_paciente', $this->paciente)->get();
        
        // Buscar usuarios en la tabla pivot usando PacienteUsuario
        $userIdsPivot = PacienteUsuario::where('nombre_paciente', $this->paciente)
            ->pluck('user_id')
            ->toArray();
        
        $usuariosPivot = User::whereIn('id', $userIdsPivot)->get();
        
        // Combinar y eliminar duplicados
        return $usuariosDirectos->merge($usuariosPivot)->unique('id');
    }
    
    /**
     * Verificar si un usuario específico tiene acceso a esta nota
     * 
     * @param \App\Models\User $user
     * @return bool
     */
    public function puedeSerAccedidaPor(User $user): bool
    {
        return $user->puedeAccederANota($this);
    }
}

