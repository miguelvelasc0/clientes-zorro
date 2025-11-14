# Portal de Pacientes - Sistema de Consulta de Estudios

Aplicación web desarrollada con Laravel para que los pacientes puedan consultar y descargar sus resultados de estudios de laboratorio.

## Características

- ✅ Autenticación de usuarios con Laravel Breeze
- ✅ Consulta de estudios realizados por paciente
- ✅ Visualización detallada de resultados
- ✅ Exportación de resultados a PDF
- ✅ Búsqueda de estudios por nombre de paciente
- ✅ Conexión a base de datos legada (solo lectura)

## Requisitos

- PHP 8.2 o superior
- Composer
- MySQL/MariaDB
- Node.js y NPM (para compilar assets)

## Instalación

1. Clonar o acceder al proyecto:
```bash
cd portal-pacientes
```

2. Instalar dependencias:
```bash
composer install
npm install
```

3. Configurar el archivo `.env`:
```env
DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=portal_pacientes
DB_USERNAME=root
DB_PASSWORD=

# Conexión secundaria para el repositorio histórico
LEGACY_DB_CONNECTION=mysql
LEGACY_DB_HOST=localhost
LEGACY_DB_PORT=3306
LEGACY_DB_DATABASE=dbf_sync
LEGACY_DB_USERNAME=root
LEGACY_DB_PASSWORD=
```

4. Crear la base de datos `portal_pacientes`:
```bash
php artisan migrate
```

5. Compilar assets:
```bash
npm run build
```

6. Iniciar el servidor:
```bash
php artisan serve
```

## Estructura de la Base de Datos

### Base de Datos Principal (`portal_pacientes`)
- **users**: Usuarios del sistema con campo `nombre_paciente` para relación directa
- **paciente_usuario**: Tabla pivot para relacionar usuarios con múltiples pacientes
- Otras tablas del sistema (sesiones, cache, etc.)

### Base de Datos Legada (`dbf_sync`)
- **notas**: Listado de pacientes con sus estudios
- **estudios**: Catálogo maestro de estudios disponibles
- **f{clave}{mes}{año}**: Tablas dinámicas con resultados de estudios
  - Ejemplo: estudio clave 169 → tablas `f01691025`, `f01691125`, etc.

## Uso

### Acceso Simplificado (Recomendado para Pacientes)

El sistema incluye un acceso simplificado que no requiere registro:

1. **Acceder al Portal**: Ir a la página principal (redirige automáticamente al acceso)
2. **Ingresar Credenciales**:
   - **Usuario**: Número de nota (campo `numero` de la tabla `notas`)
   - **Contraseña**: Primeras 3 y últimas 3 letras del nombre del paciente
     - Ejemplo: Si el paciente es "JUAN PEREZ", la contraseña sería "JUAEREZ" (JUA + EREZ)
3. **Ver Estudios**: Una vez autenticado, verás tu nota y podrás acceder a los resultados
4. **Descargar PDF**: Hacer clic en "Descargar PDF" para exportar los resultados
5. **Salir**: Usar el botón "Salir" en el menú superior

### Acceso Tradicional (Para Administradores)

1. **Registrarse/Iniciar Sesión**: Crear una cuenta o iniciar sesión
2. **Configurar Relación con Paciente**: 
   - Opción 1: Agregar el campo `nombre_paciente` al usuario (debe coincidir exactamente con el campo `paciente` en la tabla `notas`)
   - Opción 2: Usar la tabla pivot `paciente_usuario` para relacionar múltiples pacientes con un usuario
3. **Ver Estudios**: Acceder a "Mis Estudios" desde el menú de navegación
4. **Buscar**: Usar la barra de búsqueda para encontrar estudios por nombre de paciente
5. **Ver Detalle**: Hacer clic en "Ver Detalle" para ver los resultados completos
6. **Descargar PDF**: Hacer clic en "Descargar PDF" para exportar los resultados

### Configurar Relación Usuario-Paciente

#### Opción 1: Campo Directo (Un paciente por usuario)
```php
// En tinker o seeder
$user = User::find(1);
$user->nombre_paciente = 'NOMBRE DEL PACIENTE'; // Debe coincidir exactamente con notas.paciente
$user->save();
```

#### Opción 2: Tabla Pivot (Múltiples pacientes por usuario)
```php
// En tinker o seeder
PacienteUsuario::create([
    'user_id' => 1,
    'nombre_paciente' => 'NOMBRE DEL PACIENTE 1',
    'numero_orden' => null, // Opcional
    'sucursal' => null, // Opcional
]);

PacienteUsuario::create([
    'user_id' => 1,
    'nombre_paciente' => 'NOMBRE DEL PACIENTE 2',
]);
```

## Notas Importantes

- La aplicación está configurada para **solo lectura** de la base de datos legada
- Los modelos `Nota` y `Estudio` usan la conexión `legacy` automáticamente
- El servicio `ResultadoEstudioService` resuelve dinámicamente las tablas de resultados según la clave del estudio
- Los PDFs se generan usando DomPDF y se descargan automáticamente
- **Sistema de Acceso Simplificado**: No requiere registro, solo número de nota y contraseña generada automáticamente
- La contraseña se genera extrayendo solo las letras del nombre del paciente (sin espacios, números ni caracteres especiales)
- El sistema soporta ambos métodos de acceso simultáneamente (simplificado y tradicional)

## Desarrollo

### Modelos
- `App\Models\User`: Modelo de usuario con relaciones a pacientes y notas
- `App\Models\Nota`: Modelo para la tabla `notas` (conexión legacy) con relación a usuarios
- `App\Models\Estudio`: Modelo para la tabla `estudios` (conexión legacy)
- `App\Models\PacienteUsuario`: Modelo pivot para relacionar usuarios con pacientes

### Servicios
- `App\Services\ResultadoEstudioService`: Servicio para consultar resultados dinámicamente

### Controladores
- `App\Http\Controllers\AccesoController`: Maneja el acceso simplificado por número de nota
- `App\Http\Controllers\EstudioController`: Gestión de visualización de estudios (funciona con ambos sistemas)
- `App\Http\Controllers\PDFController`: Generación de PDFs (funciona con ambos sistemas)

## Relaciones Implementadas

### User → Notas
- `$user->notas()`: Obtiene todas las notas del usuario (filtra por nombre_paciente directo y tabla pivot)
- `$user->pacientesRelacionados()`: Obtiene los pacientes asociados en la tabla pivot
- `$user->puedeAccederANota($nota)`: Verifica si el usuario tiene acceso a una nota específica

### Nota → Usuarios
- `$nota->usuarios()`: Obtiene todos los usuarios que tienen acceso a esta nota
- `$nota->puedeSerAccedidaPor($user)`: Verifica si un usuario puede acceder a esta nota

## Próximas Mejoras

- [x] Relacionar usuarios con pacientes en la tabla notas
- [x] Filtrado automático por paciente autenticado
- [ ] Panel de administración para gestionar relaciones usuario-paciente
- [ ] Notificaciones por email cuando hay nuevos resultados
- [ ] Historial de descargas de PDFs
- [ ] Mejoras en el diseño de los PDFs

## Licencia

Este proyecto es de uso interno.
