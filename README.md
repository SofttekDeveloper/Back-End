# Proyecto: Integración de Backend en PHP (Laravel) y Frontend en Angular

Este proyecto consta de un **backend** desarrollado en **Laravel** y un **frontend** en **Angular**. El backend proporciona una API que el frontend consume para mostrar una lista de elementos.

## Repositorio

Puedes encontrar el código fuente del frontend en el siguiente repositorio de GitHub:

[FrontendAngular - GitHub](https://github.com/JCUSDeveloper/FrontendAngular.git)

## Requisitos Previos

- **Node.js** (versión más reciente)
- **npm** (viene incluido con Node.js)
- **PHP** (versión 8 o superior)
- **Composer** (gestor de dependencias de PHP)
- **Angular CLI** (para el desarrollo de la aplicación Angular)

## Configuración y Ejecución

### Frontend

1. **Instalar dependencias**:

   ```bash
   npm install
   ```

2. **Iniciar el servidor de desarrollo de Angular**:

   ```bash
   ng serve
   ```

3. **Navegar a la aplicación**:

   Abre tu navegador y ve a: [http://localhost:4200/](http://localhost:4200/)

### Backend

1. **Instalar dependencias de PHP**:

   ```bash
   composer install
   ```
2. **Copiar el archivo .env.example como .env**:

     **En Unix/Linux/Mac:**
     ```bash
     cp .env.example .env
     ```

    **En Windows (cmd):**
     ```cmd
     copy .env.example .env
     ```

    **En Windows (PowerShell):**
     ```powershell
     Copy-Item .env.example .env
     ```

3. **Iniciar el servidor de desarrollo de Laravel**:

   ```bash
   php artisan serve
   ```

4. **Navegar a la API**:

   El backend servirá los endpoints de la API. Puedes acceder a ellos en: [http://127.0.0.1:8000/elementos](http://127.0.0.1:8000/elementos)

## Verificación del Proyecto

1. Asegúrate de que el **backend** esté corriendo en [http://127.0.0.1:8000/](http://127.0.0.1:8000/).
2. Asegúrate de que el **frontend** esté corriendo en [http://localhost:4200/](http://localhost:4200/).
3. El frontend debería mostrar la lista de elementos obtenida de la API del backend.

## Estructura del Proyecto

- **Backend**: PHP + Laravel (API REST)
- **Frontend**: Angular (consumo de la API y presentación de datos)

## Notas

- Asegúrate de que ambos servidores estén corriendo al mismo tiempo para el correcto funcionamiento de la aplicación.
- La comunicación entre el frontend y el backend se realiza a través de llamadas HTTP a la API.

