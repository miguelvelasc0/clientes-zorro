<?php

namespace App\Services;

use App\Models\Estudio;
use Illuminate\Support\Facades\DB;

/**
 * Servicio para resolver dinámicamente las tablas de resultados de estudios
 * 
 * Este servicio maneja la lógica de búsqueda y consulta de resultados
 * que se almacenan en tablas dinámicas según el patrón: f{clave}{mes}{año}
 */
class ResultadoEstudioService
{
    /**
     * Obtener los resultados de un estudio para una orden específica
     * 
     * @param int $claveEstudio Clave del estudio (ej: 169)
     * @param int $orden Número de orden del paciente
     * @param string|null $sucursal Sucursal (opcional, para filtrar)
     * @return array|null Datos del resultado o null si no se encuentra
     */
    public function obtenerResultadoPorOrden(int $claveEstudio, int $orden, ?string $sucursal = null): ?array
    {
        // Obtener el prefijo de la tabla según la clave del estudio
        $prefijo = $this->generarPrefijoTabla($claveEstudio);
        
        // Buscar todas las tablas que coincidan con el patrón
        $tablas = $this->buscarTablasResultados($prefijo);
        
        if (empty($tablas)) {
            return null;
        }
        
        // Buscar en cada tabla hasta encontrar el resultado
        foreach ($tablas as $tabla) {
            $query = DB::connection('legacy')
                ->table($tabla)
                ->where('orden', $orden);
            
            if ($sucursal) {
                $query->where('sucursal', $sucursal);
            }
            $resultado = $query->first();
            
            if ($resultado) {
                return (array) $resultado;
            }
        }
        
        return null;
    }
    
    /**
     * Obtener todos los resultados de un estudio para un paciente
     * 
     * @param int $claveEstudio Clave del estudio
     * @param string $nombrePaciente Nombre del paciente
     * @return array Array con todos los resultados encontrados
     */
    public function obtenerResultadosPorPaciente(int $claveEstudio, string $nombrePaciente): array
    {
        $prefijo = $this->generarPrefijoTabla($claveEstudio);
        $tablas = $this->buscarTablasResultados($prefijo);
        
        $resultados = [];
        
        foreach ($tablas as $tabla) {
            $registros = DB::connection('legacy')
                ->table($tabla)
                ->where('paciente', 'LIKE', "%{$nombrePaciente}%")
                ->get();
            
            foreach ($registros as $registro) {
                $resultados[] = (array) $registro;
            }
        }
        
        return $resultados;
    }
    
    /**
     * Generar el prefijo de tabla según la clave del estudio
     * 
     * @param int $claveEstudio Clave del estudio
     * @return string Prefijo (ej: 'f0169')
     */
    private function generarPrefijoTabla(int $claveEstudio): string
    {
        $claveFormateada = str_pad($claveEstudio, 4, '0', STR_PAD_LEFT);
        return 'f' . $claveFormateada;
    }
    
    /**
     * Buscar todas las tablas de resultados que coincidan con el prefijo
     * 
     * @param string $prefijo Prefijo de la tabla (ej: 'f0169')
     * @return array Array con nombres de tablas
     */
    private function buscarTablasResultados(string $prefijo): array
    {
        $database = config('database.connections.legacy.database');
        $prefijo = strtoupper($prefijo);
        // Consultar las tablas que coincidan con el patrón
        $tablas = DB::connection('legacy')
            ->select("SHOW TABLES LIKE '{$prefijo}%'");
        
        $nombresTablas = [];
        $campoTabla = 'Tables_in_' . $database . ' (' . $prefijo . '%)';
        
        foreach ($tablas as $tabla) {
            // Obtener el nombre de la tabla del objeto
            $nombreTabla = $tabla->$campoTabla ?? array_values((array)$tabla)[0];
            $nombresTablas[] = $nombreTabla;
        }
        
        return $nombresTablas;
    }
    
    /**
     * Obtener los resultados de todos los estudios de una nota
     * 
     * @param \App\Models\Nota $nota Instancia de la nota
     * @return array Array asociativo con clave=clave_estudio, valor=resultados
     */
    public function obtenerResultadosDeNota($nota): array
    {
        $estudiosIds = $nota->getEstudiosIds();
        $resultados = [];
        
        foreach ($estudiosIds as $claveEstudio) {
            // Obtener información del estudio
            $estudio = Estudio::where('clave', $claveEstudio)->first();
            
            if (!$estudio) {
                continue;
            }
            
            // Buscar resultados para esta orden
            $resultado = $this->obtenerResultadoPorOrden(
                $claveEstudio,
                $nota->numero,
                $nota->sucursal
            );
            
            if ($resultado) {
                $resultados[$claveEstudio] = [
                    'estudio' => $estudio,
                    'resultado' => $resultado,
                ];
            }
        }
        
        return $resultados;
    }
}
