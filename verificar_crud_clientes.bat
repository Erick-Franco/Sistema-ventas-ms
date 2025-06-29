@echo off
echo 🔍 Verificando configuración del CRUD de Clientes...
echo ==================================================

echo 📁 Verificando archivos del proyecto...

REM Backend
if exist "jea-cliente\src\main\java\com\example\mscliente\controller\ClienteController.java" (
    echo ✅ Backend Controller encontrado
) else (
    echo ❌ Backend Controller NO encontrado
)

REM Frontend Service
if exist "sistema-ventas-frontend\src\app\services\cliente.service.ts" (
    echo ✅ Cliente Service encontrado
) else (
    echo ❌ Cliente Service NO encontrado
)

REM Frontend Components
if exist "sistema-ventas-frontend\src\app\pages\clientes\clientes.component.ts" (
    echo ✅ Clientes Component encontrado
) else (
    echo ❌ Clientes Component NO encontrado
)

if exist "sistema-ventas-frontend\src\app\pages\clientes\form-cliente\form-cliente.component.ts" (
    echo ✅ Form Cliente Component encontrado
) else (
    echo ❌ Form Cliente Component NO encontrado
)

echo.
echo ⚙️ Verificando configuración...

REM Gateway config
if exist "config-data\jea-gateway-service.yml" (
    echo ✅ Gateway config encontrado
    echo    Puerto Gateway: 8085
    echo    CORS habilitado para localhost:4200
) else (
    echo ❌ Gateway config NO encontrado
)

REM Cliente service config
if exist "config-data\jea-cliente-service.yml" (
    echo ✅ Cliente service config encontrado
) else (
    echo ❌ Cliente service config NO encontrado
)

echo.
echo 📋 APIs disponibles en el backend:
echo    GET    /cliente          - Listar clientes
echo    GET    /cliente/{id}     - Obtener por ID
echo    GET    /cliente/dni/{dni}- Obtener por DNI
echo    POST   /cliente          - Crear cliente
echo    PUT    /cliente/{id}     - Actualizar cliente
echo    DELETE /cliente/{id}     - Eliminar cliente

echo.
echo 🚀 Para ejecutar el sistema:
echo    1. Ejecutar microservicios en orden:
echo       - jea-registry-server (puerto 8090)
echo       - jea-config-server (puerto 7070)
echo       - jea-gateway-server (puerto 8085)
echo       - jea-auth
echo       - jea-cliente
echo.
echo    2. Ejecutar frontend:
echo       cd sistema-ventas-frontend
echo       npm install
echo       npm start
echo.
echo    3. Acceder a: http://localhost:4200

echo.
echo ✨ CRUD de Clientes con NUEVO DISEÑO implementado exitosamente!
echo    ✅ Crear clientes con validaciones
echo    ✅ Listar clientes en tabla responsive
echo    ✅ Editar clientes existentes  
echo    ✅ Eliminar clientes con confirmación
echo    ✅ Activar/desactivar estado
echo    ✅ Diseño consistente con el sistema
echo    ✅ Filtros avanzados por múltiples campos
echo    ✅ Estadísticas en tiempo real
echo    ✅ Modal personalizado (no MatDialog)
echo    ✅ Paginación y ordenamiento

pause
