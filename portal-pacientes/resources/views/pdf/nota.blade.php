<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Resultados de Estudios - Nota #{{ $nota->numero }}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 12px;
            margin: 20px;
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
            border-bottom: 2px solid #333;
            padding-bottom: 10px;
        }
        .header h1 {
            margin: 0;
            font-size: 18px;
        }
        .info-paciente {
            margin-bottom: 20px;
            padding: 10px;
            background-color: #f5f5f5;
        }
        .info-paciente table {
            width: 100%;
        }
        .info-paciente td {
            padding: 5px;
        }
        .estudio {
            margin-bottom: 20px;
            page-break-inside: avoid;
        }
        .estudio-header {
            background-color: #333;
            color: white;
            padding: 8px;
            font-weight: bold;
        }
        .resultados {
            border: 1px solid #ddd;
            padding: 10px;
        }
        .resultados table {
            width: 100%;
            border-collapse: collapse;
        }
        .resultados td {
            padding: 5px;
            border-bottom: 1px solid #eee;
        }
        .resultados td:first-child {
            font-weight: bold;
            width: 40%;
        }
        .footer {
            margin-top: 30px;
            text-align: center;
            font-size: 10px;
            color: #666;
        }
    </style>
</head>
<body>
    <!-- Encabezado -->
    <div class="header">
        <h1>RESULTADOS DE ESTUDIOS DE LABORATORIO</h1>
        <p>Nota #{{ $nota->numero }}</p>
    </div>

    <!-- Información del Paciente -->
    <div class="info-paciente">
        <table>
            <tr>
                <td><strong>Paciente:</strong> {{ $nota->paciente }}</td>
                <td><strong>Edad:</strong> {{ $nota->edad ?? 'N/A' }}</td>
                <td><strong>Sexo:</strong> {{ $nota->sexo ?? 'N/A' }}</td>
            </tr>
            <tr>
                <td><strong>Médico:</strong> {{ $nota->medico ?? 'N/A' }}</td>
                <td><strong>Fecha:</strong> {{ $nota->fecha ? $nota->fecha->format('d/m/Y H:i') : 'N/A' }}</td>
                <td><strong>Sucursal:</strong> {{ $nota->sucursal ?? 'N/A' }}</td>
            </tr>
        </table>
    </div>

    <!-- Estudios y Resultados -->
    @foreach($estudios as $estudio)
        @if(isset($resultados[$estudio->clave]))
            <div class="estudio">
                <div class="estudio-header">
                    {{ $estudio->estudio ?? 'Estudio #' . $estudio->clave }}
                    @if($estudio->area)
                        - {{ $estudio->area }}
                    @endif
                </div>
                <div class="resultados">
                    <table>
                        @foreach($resultados[$estudio->clave]['resultado'] as $campo => $valor)
                            @if($valor !== null && $campo !== 'id' && $campo !== 'sucursal' && $campo !== 'orden' && $campo !== 'paciente' && $campo !== 'medico' && $campo !== 'edad' && $campo !== 'sexo')
                                <tr>
                                    <td>{{ ucfirst(str_replace('_', ' ', $campo)) }}</td>
                                    <td>{{ $valor }}</td>
                                </tr>
                            @endif
                        @endforeach
                    </table>
                </div>
            </div>
        @endif
    @endforeach

    <!-- Pie de página -->
    <div class="footer">
        <p>Documento generado el {{ now()->format('d/m/Y H:i:s') }}</p>
    </div>
</body>
</html>

