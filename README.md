# README

Esta es una prueba técnica realizada para HoyTrabajas.com (Software Engineer - Ruby on Rails). La aplicación utiliza los ajustes por defecto de una aplicación de RoR. Por requisito de la prueba, no hay separación entre frontend y backend. Sin embargo, una opción evaluada, pero descartada fue la construcción del frontend con React.js y el servidor REST con RoR.

El alcance de esta la prueba incluye:
- CRUD de bancos (validaciones del lado del modelo, relación con proveedores)
- CRUD de proveedores (validaciones del lado del modelo, relación con bancos)
- Login y registro de usuarios (gema Devise)
- Manejo de errores de formularios y confirmaciones de modificaciones en el sistema
- Paginación de resultados (proveedores)
- Uso de i18n (en un solo componente de UI)

En esta prueba no se incluye:
- Suite de pruebas
- i18n para toda la aplicación
- Configuración del proyecto con Docker
- Uso de Atomic Design para los estilos (para los estilos se usó Bootstrap)

## Requisitos
- Ruby 3.1.3
- SQLite3

Nota: En el repositorio (/db/development.sqlite3) se encuentra una base de datos populada con la información suficiente para usar todas las funcionalidades de la aplicación. 

## Creación de la base de datos
```
rails db:create (Este comando no es necesario dado que el archivo .sqlite3 se encuentra en la app)
```

## Ejecución del proyecto
```
bundle exec rails server
```