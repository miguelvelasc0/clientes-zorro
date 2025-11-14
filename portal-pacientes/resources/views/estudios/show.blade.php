<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Detalle de Estudio') }} - Nota #{{ $nota->numero }}
            </h2>
            <a href="{{ route('pdf.nota', $nota->id) }}" class="px-4 py-2 bg-red-600 text-white rounded-md hover:bg-red-700">
                Descargar PDF
            </a>
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <!-- Información del paciente -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    <h3 class="text-lg font-semibold mb-4">Información del Paciente</h3>
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <p class="text-sm text-gray-500">Paciente:</p>
                            <p class="font-medium">{{ $nota->paciente }}</p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Edad:</p>
                            <p class="font-medium">{{ $nota->edad ?? 'N/A' }}</p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Sexo:</p>
                            <p class="font-medium">{{ $nota->sexo ?? 'N/A' }}</p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Médico:</p>
                            <p class="font-medium">{{ $nota->medico ?? 'N/A' }}</p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Fecha:</p>
                            <p class="font-medium">{{ $nota->fecha ? $nota->fecha->format('d/m/Y H:i') : 'N/A' }}</p>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Sucursal:</p>
                            <p class="font-medium">{{ $nota->sucursal ?? 'N/A' }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Estudios y Resultados -->
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    <h3 class="text-lg font-semibold mb-4">Estudios Realizados</h3>
                    
                    @if($estudios->count() > 0)
                        <div class="space-y-6">
                            @foreach($estudios as $estudio)
                                <div class="border border-gray-200 rounded-lg p-4">
                                    <div class="flex justify-between items-start mb-3">
                                        <div>
                                            <h4 class="font-semibold text-lg">{{ $estudio->estudio ?? 'Estudio #' . $estudio->clave }}</h4>
                                            @if($estudio->area)
                                                <p class="text-sm text-gray-500">{{ $estudio->area }}</p>
                                            @endif
                                        </div>
                                        @if(isset($resultados[$estudio->clave]))
                                            <a href="{{ route('pdf.estudio', ['notaId' => $nota->id, 'claveEstudio' => $estudio->clave]) }}" 
                                               class="px-3 py-1 bg-red-600 text-white text-sm rounded hover:bg-red-700">
                                                PDF
                                            </a>
                                        @endif
                                    </div>

                                    @if(isset($resultados[$estudio->clave]))
                                        <div class="mt-4">
                                            <h5 class="font-medium mb-2">Resultados:</h5>
                                            <div class="bg-gray-50 rounded p-3">
                                                <div class="grid grid-cols-2 gap-2 text-sm">
                                                    @foreach($resultados[$estudio->clave]['resultado'] as $campo => $valor)
                                                        @if($valor !== null && $campo !== 'id' && $campo !== 'sucursal' && $campo !== 'orden')
                                                            <div>
                                                                <span class="font-medium">{{ ucfirst(str_replace('_', ' ', $campo)) }}:</span>
                                                                <span class="ml-2">{{ $valor }}</span>
                                                            </div>
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        <p class="text-sm text-gray-500 italic">Resultados no disponibles aún.</p>
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    @else
                        <p class="text-gray-500">No se encontraron estudios asociados a esta nota.</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

