<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

/**
 * Modelo para la tabla 'estudios' en la base de datos legada (dbf_sync)
 * 
 * Esta tabla contiene el catálogo maestro de estudios disponibles.
 * Cada estudio tiene una clave que se usa para identificar la tabla de resultados.
 * Por ejemplo, el estudio con clave 169 tiene resultados en tablas que inician con 'f0169'
 */
class Estudio extends Model
{
    // Conexión a la base de datos legada
    protected $connection = 'legacy';
    
    // Nombre de la tabla
    protected $table = 'estudios';
    
    // Desactivar timestamps
    public $timestamps = false;
    
    // Clave primaria personalizada
    protected $primaryKey = 'id';
    
    // Campos que pueden ser asignados masivamente
    protected $fillable = [
        'sucursal',
        'clave',
        'tip',
        'estudio',
        'area',
        'importe',
        'iva',
        'total',
        'tiempo',
        'clase',
        'nombre',
        'nombre1',
        'unidades',
        'ref1',
        'ref2',
        'ref3',
        'tipo',
        'reporte',
        'code',
        'borrar',
        'perfil',
        'obs',
    ];
    
    /**
     * Obtener el nombre base de la tabla de resultados para este estudio
     * 
     * Las tablas de resultados siguen el patrón: f{clave}{mes}{año}
     * Ejemplo: estudio clave 169 -> tablas f01691025, f01691125, etc.
     * 
     * @return string Prefijo de la tabla (ej: 'f0169')
     */
    public function getTablaResultadosPrefijo(): string
    {
        // Formatear la clave con ceros a la izquierda hasta 4 dígitos
        $claveFormateada = str_pad($this->clave, 4, '0', STR_PAD_LEFT);
        
        return 'f' . $claveFormateada;
    }
    
    /**
     * Buscar todas las tablas de resultados disponibles para este estudio
     * 
     * @return array Array con nombres de tablas que coinciden con el patrón
     */
    public function getTablasResultadosDisponibles(): array
    {
        $prefijo = $this->getTablaResultadosPrefijo();
        $database = config('database.connections.legacy.database');
        
        // Obtener todas las tablas que inician con el prefijo
        $tablas = DB::connection('legacy')->select("SHOW TABLES LIKE '{$prefijo}%'");
        
        $nombresTablas = [];
        
        foreach ($tablas as $tabla) {
            // El nombre de la tabla está en el primer valor del array
            $nombreTabla = array_values((array)$tabla)[0];
            $nombresTablas[] = $nombreTabla;
        }
        
        return $nombresTablas;
    }
}

