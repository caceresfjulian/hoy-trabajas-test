# README

Esta es una prueba técnica realizada para HoyTrabajas.com (Software Engineer - Ruby on Rails). La aplicación utiliza los ajustes por defecto de una aplicación de RoR. Por requisito de la prueba, no hay separación entre frontend y backend. Sin embargo, una opción evaluada, pero descartada fue la construcción del frontend con React.js y el servidor REST con RoR.

El alcance de esta la prueba incluye:
- CRUD de bancos (validaciones del lado del modelo, relación con proveedores, restricción de eliminación de banco al tener proveedores asociados)
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

## Imágenes de la aplicación
### Inicio
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/a3c66065-bc86-49ac-99f8-93984ecd9bb2)
### Login
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/de837241-d901-4cfb-b914-f06ab6de1c37)
### Sign up
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/5736d3f5-df80-4bdc-a5e0-e758655eb5d3)
### Dashboard
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/069c9014-14f6-4d96-83c2-9fdfb212f39f)
### Banks list
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/61fba629-d8ee-4eaa-87a3-ed7355db264d)
### Create or edit bank
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/691153f5-fbbc-45bd-a2db-331f799b7fdc)
### Suppliers list
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/8ce7c0c3-3c0c-4bca-a222-d912876e63c6)
### Create or edit supplier
![image](https://github.com/caceresfjulian/hoy-trabajas-test/assets/47955341/72ef275d-2809-4f88-a875-0cf7926ed6af)
