<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between items-center">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('Mis Estudios') }}
            </h2>
            @if(isset($acceso_simplificado) && $acceso_simplificado && Session::has('nota_paciente'))
                <span class="text-sm text-gray-600">
                    Nota #{{ Session::get('nota_numero') }} - {{ Session::get('nota_paciente') }}
                </span>
            @endif
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <!-- Barra de búsqueda (solo para autenticación tradicional) -->
                    @if(!isset($acceso_simplificado) || !$acceso_simplificado)
                        <div class="mb-6">
                            <form action="{{ route('estudios.buscar') }}" method="GET" class="flex gap-2">
                                <input 
                                    type="text" 
                                    name="q" 
                                    value="{{ $query ?? '' }}"
                                    placeholder="Buscar por nombre de paciente..." 
                                    class="flex-1 rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500"
                                >
                                <button type="submit" class="px-4 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700">
                                    Buscar
                                </button>
                            </form>
                        </div>
                    @endif

                    <!-- Tabla de estudios -->
                    @if($notas->count() > 0)
                        <div class="overflow-x-auto">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead class="bg-gray-50">
                                    <tr>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Número
                                        </th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Paciente
                                        </th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Fecha
                                        </th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Médico
                                        </th>
                                        <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                            Acciones
                                        </th>
                                    </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                    @foreach($notas as $nota)
                                        <tr>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                                {{ $nota->numero }}
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-900">
                                                {{ $nota->paciente }}
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                                {{ $nota->fecha ? $nota->fecha->format('d/m/Y') : 'N/A' }}
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                                {{ $nota->medico ?? 'N/A' }}
                                            </td>
                                            <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                                <a href="{{ route('estudios.show', $nota->id) }}" class="text-indigo-600 hover:text-indigo-900">
                                                    Ver Detalle
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>

                        <!-- Paginación -->
                        <div class="mt-4">
                            {{ $notas->links() }}
                        </div>
                    @else
                        <div class="text-center py-12">
                            <p class="text-gray-500">No se encontraron estudios.</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

