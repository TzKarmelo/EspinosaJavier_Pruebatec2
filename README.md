
# Prueba Técnica Nº 2 Java Web

En esta prueba desarrollo una Aplicación de Gestión de Trámites donde desarrollo mis conocimientos en Java Web utilizando estructuras repetitivas, manejo de colecciones y CRUD, utilizando JPA, para interactuar con una base de datos y JSP para interactuar con el usuario.

## Despliegue

El proyecto está realizado con el IDE Netbeans y está totalmente documentado con una serie de comentarios para su fácil comprensión y legibilidad. En la carpeta de recursos podreis encontrar la base de datos utilizada para este proyecto. Se ha utilizado Bootstrap para parte de los estilos.

## Descripción

El aplicativo se compone de un menú principal donde podremos elegir entre 4 opciones para gestionar los trámites de una entidad gubernamental.

- Registro ciudadano: Se realiza un CRUD de un ciudadano.
- Registro trámite: Se crea un tipo de trámite con un turno de inicio.
- Solicitud trámite: Aqui se solicita un trámite y se le asigna un turno automaticamente.
- Mostrar trámites: Para mostrar los turnos y poder filtrarlos por estado.

Todo está manjejado por una controladora de persistencia, la que nos permite interactuar con la base de datos mediante servlets creados para el desarrollo backend.