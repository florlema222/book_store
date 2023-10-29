# Consulta de Libros con Autores y Editoriales
[BookStoreURL](https://bookstore-1tot.onrender.com)

## Descripción
Este proyecto es una aplicación web que te permite buscar y consultar libros de una base de datos. Además de los detalles de los libros, la aplicación muestra información sobre los autores y editoriales relacionadas. Es una herramienta útil para buscar libros y obtener información adicional sobre los autores y las editoriales detrás de ellos.

## Características Principales
- Búsqueda de libros por título.
- Filtrado de libros por autor y editorial.
- Visualización de detalles de libros, incluyendo ISBN, fecha de publicación, reseñas y precio.
- Información detallada sobre autores, incluyendo nombres y apellidos.
- Datos de editoriales.

## Guía de Uso
1. Ingresa una palabra clave en el campo de búsqueda y selecciona una categoría (por ejemplo, "Todos", "Autor" o "Editorial").
2. Haz clic en "Buscar" para obtener una lista de libros que coincidan con tus criterios.
3. Explora los resultados y haz clic en un libro para ver detalles adicionales.
4. Puedes hacer clic en el nombre del autor o la editorial para obtener más información sobre ellos.
5. Para editar, eliminar o crear autores, libros y/o editoriales el usuario deberá estar registrado

## CODIGO PARA CREAR USUARIO: 11115
El código para crear exitosamente un usuario es 11115, correo y contraseña son individuales. Este código en una app realista no estaría en el readme y sería solo para aquellas personas que tengan permitido Editar, Crear y Eliminar libros, autores y editoriales.

# API de Consulta de Libros

## Introducción
La aplicación ofrece una API para acceder a la información de libros. Esta API te permite realizar consultas y obtener datos detallados de libros y sus relaciones con autores y editoriales.

## Uso Básico
- **Endpoint Base**: `https://bookstore-1tot.onrender.com/api/v1`

### Consulta de Libros
- **Endpoint**: `/books`
- **Método HTTP**: `GET`
- **Parámetros de Búsqueda**:
  - `title` (opcional): Filtra libros por título.
  - `min_price` y `max_price` (opcional): Filtra libros por rango de precios.
  - `author_name` (opcional): Busca libros por nombre de autor.

**Ejemplo de Solicitud**:

GET (https://bookstore-1tot.onrender.com/api/v1/books?title=Harry_Potter)

### Paginación en la API
La API, ofrece paginación para ayudarte a navegar a través de grandes conjuntos de datos:

- `page` (opcional): Permite especificar la página que deseas ver.

**Ejemplo de Solicitud con Paginación**:
(http://bookstore-1tot.onrender.com/api/v1/books?page=2)


## Autor
Este proyecto fue creado por [Florencia Lema] y está disponible en [https://github.com/florlema222/book_store].

¡Gracias por ver la aplicación!
