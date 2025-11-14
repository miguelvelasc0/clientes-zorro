<?php

namespace App\Helpers;

/**
 * Helper para generar y validar contraseñas del sistema de acceso simplificado
 * 
 * La contraseña se genera tomando las primeras 3 y últimas 3 letras
 * del nombre del paciente (solo letras, sin espacios ni caracteres especiales)
 */
class PasswordHelper
{
    /**
     * Generar la contraseña a partir del nombre del paciente
     * 
     * @param string $nombrePaciente Nombre del paciente
     * @return string|null Contraseña generada (6 letras) o null si no tiene suficientes letras
     */
    public static function generarPassword(string $nombrePaciente): ?string
    {
        // Convertir a mayúsculas y quitar espacios
        $nombrePaciente = strtoupper(trim($nombrePaciente));
        
        // Extraer solo las letras (sin números, espacios ni caracteres especiales)
        $letras = preg_replace('/[^A-Z]/', '', $nombrePaciente);
        
        // Verificar que tenga al menos 6 letras
        if (strlen($letras) < 6) {
            return null;
        }
        
        // Obtener primeras 3 y últimas 3 letras
        $primeras3 = substr($letras, 0, 3);
        $ultimas3 = substr($letras, -3);
        
        return $primeras3 . $ultimas3;
    }
    
    /**
     * Validar si una contraseña es correcta para un nombre de paciente
     * 
     * @param string $password Contraseña a validar
     * @param string $nombrePaciente Nombre del paciente
     * @return bool True si la contraseña es correcta
     */
    public static function validarPassword(string $password, string $nombrePaciente): bool
    {
        $passwordEsperado = self::generarPassword($nombrePaciente);
        
        if ($passwordEsperado === null) {
            return false;
        }
        
        // Comparar en mayúsculas y sin espacios
        return strtoupper(trim($password)) === $passwordEsperado;
    }
}

