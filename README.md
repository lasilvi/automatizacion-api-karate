# Automatización API Karate - CRUD Usuarios

Proyecto de automatización de pruebas API usando **Karate Framework** para el flujo CRUD de usuarios de [https://automationexercise.com](https://automationexercise.com).

## Estructura del proyecto

```
src/test/java/
├── karate-config.js              # Configuración global (baseUrl, email dinámico)
├── features/
│   ├── CrudUsuariosTest.java     # Test Runner JUnit 5
│   ├── createUser.feature        # API 11 - Crear usuario (POST)
│   ├── getUser.feature           # API 14 - Consultar usuario por email (GET)
│   ├── updateUser.feature        # API 13 - Actualizar usuario (PUT)
│   └── deleteUser.feature        # API 12 - Eliminar usuario (DELETE)
```

## APIs probadas

| API | Método | Endpoint | Descripción |
|-----|--------|----------|-------------|
| 11 | POST | `/api/createAccount` | Crear cuenta de usuario |
| 14 | GET | `/api/getUserDetailByEmail` | Consultar usuario por email |
| 13 | PUT | `/api/updateAccount` | Actualizar cuenta de usuario |
| 12 | DELETE | `/api/deleteAccount` | Eliminar cuenta de usuario |

## Requisitos previos

- Java 11+
- Maven 3.6+

## Ejecución

```bash
# Ejecutar todas las pruebas CRUD
mvn test -Dtest=features.CrudUsuariosTest

# Ejecutar todas las pruebas del proyecto
mvn test
```

## Reportes

Después de la ejecución, los reportes HTML se generan en:

```
target/karate-reports/karate-summary.html
```

Abrir en el navegador para ver el detalle de cada escenario.

## Características

- **Email dinámico** generado con timestamp para evitar conflictos entre ejecuciones
- **Form fields** (`application/x-www-form-urlencoded`) en todas las peticiones POST/PUT/DELETE
- **Variables reutilizables** definidas en `karate-config.js` (`baseUrl`, `userEmail`, `userPassword`, `userName`)
- **Ejecución secuencial** (`parallel(1)`) para respetar las dependencias entre escenarios (crear → consultar → actualizar → eliminar)
