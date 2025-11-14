<x-guest-layout>
    <div class="min-h-screen flex items-center justify-center bg-gray-100 py-12 px-4 sm:px-6 lg:px-8">
        <div class="max-w-md w-full space-y-8">
            <div>
                <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">
                    Acceso a Resultados de Estudios
                </h2>
                <p class="mt-2 text-center text-sm text-gray-600">
                    Ingresa tu número de nota y contraseña para ver tus resultados
                </p>
            </div>
            
            <!-- Mensajes de éxito/error -->
            @if (session('success'))
                <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert">
                    <span class="block sm:inline">{{ session('success') }}</span>
                </div>
            @endif
            
            @if ($errors->any())
                <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
                    <ul class="list-disc list-inside">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            
            <form class="mt-8 space-y-6" action="{{ route('acceso.validar') }}" method="POST">
                @csrf
                
                <div class="rounded-md shadow-sm -space-y-px">
                    <div>
                        <label for="numero_nota" class="sr-only">Número de Nota</label>
                        <input 
                            id="numero_nota" 
                            name="numero_nota" 
                            type="number" 
                            required 
                            class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" 
                            placeholder="Número de Nota"
                            value="{{ old('numero_nota') }}"
                        >
                    </div>
                    <div>
                        <label for="password" class="sr-only">Contraseña</label>
                        <input 
                            id="password" 
                            name="password" 
                            type="text" 
                            required 
                            maxlength="6"
                            minlength="6"
                            class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm" 
                            placeholder="Contraseña (6 letras)"
                            value="{{ old('password') }}"
                        >
                    </div>
                </div>
                
                <div class="bg-blue-50 border border-blue-200 rounded-md p-4">
                    <p class="text-sm text-blue-800">
                        <strong>¿Cómo obtener tu contraseña?</strong><br>
                        La contraseña son las <strong>primeras 3 y últimas 3 letras</strong> del nombre del paciente registrado en la nota.
                    </p>
                </div>

                <div>
                    <button 
                        type="submit" 
                        class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                    >
                        Acceder
                    </button>
                </div>
            </form>
            
            <!-- Opción para registro tradicional (opcional) -->
            <div class="text-center">
                <p class="text-sm text-gray-600">
                    ¿Eres administrador? 
                    <a href="{{ route('login') }}" class="font-medium text-indigo-600 hover:text-indigo-500">
                        Iniciar sesión tradicional
                    </a>
                </p>
            </div>
        </div>
    </div>
</x-guest-layout>

