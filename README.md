<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h3 align="center">App de Tareas</h3>
  <p align="center">
    <br />
    <a href=""><strong>Ir a Documentación»</strong></a>
    <br />
    <br />
    <a href="https://kiosko.azurewebsites.net/">Ver Demo</a>
    ·
    <a href="https://github.com/afmonroy83/task_app/issues">Reportar Errores</a>
    ·
    <a href="https://github.com/afmonroy83/task_app/issues">Solicitar Funcionalidad</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Tabla de contenido

* [Acerca del proyecto](#about-the-project)  
  * [Built With](#built-with)  
* [Comenzando](#getting-started)
  * [Requisitos previos](#prerequisites)
  * [Instalación](#installation)
* [Uso](#usage)  
* [Hoja de ruta](#roadmap)
* [Licencia](#license)
* [Contacto](#contact)


<!-- ABOUT THE PROJECT -->
## About The Project

**App de Tareas**, Es un proyecto que permite crear tareas, editarlas, eliminarlas y buscarlas, cuenta con una opción de registro y autorizacion .
**Modulos principales**
>- ruby '2.4.4'
>- rails '5.2.4.5'
>- mysql '14.14 Distrib 5.7.33'
>- jQuery
>- Boostrap [opcional]
>- FontAwesome [opcional]

### Built With

* [HTML](https://www.w3schools.com/html/html_examples.asp)
* [JavaScript](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-4-4-released/)
* [jquery](https://jquery.com/)
* [Ruby](http://rvm.io/)
* [Boostrap](https://getbootstrap.com/)
* [CSS](https://www.w3.org/standards/webdesign/htmlcss)
* [FontAwesome](https://fontawesome.com/v4.7.0/icons/)
<!-- GETTING STARTED -->
## Getting Started

Se debe tener en cuenta que esta hecho para trabajar con una base de datos mysql, se deberan configurar sus respectivas credenciales en config/database.yml

### Prerequisites

**Ambiente Local o Pruebas, tener instalado:**

>- Rvm
>- Rails
>- Git(Opcional)
>- 

### Installation

1. Clonar el repositorio
```sh
https://github.com/afmonroy83/task_app.git
```
2. Instalar gemas y levantar la base de datos
```
bundle install
rails db:setup
```
3. Ajustar variables en config/database.yml
```
default: &default
  adapter: mysql2
  host: 
  username: 
  password: 
  port: 3306
  encoding: utf8
```
4. Ejecutar la aplicación con rails 
```
   Rails:
   (cualquier rama)
   rails s
```

<!-- USAGE EXAMPLES -->
## Usage

Después de subir el servicio, en su navegador dirigirse a:

#### Local
>- http://localhost:3000/
#### (Servidor)
>- 

<!-- ROADMAP -->
## Roadmap

Consulte los [open-issues](https://github.com/afmonroy83/task_app/issues) para obtener una lista de las características propuestas (y problemas conocidos).

<!-- LICENSE -->
## License

Todos los derechos de uso y comercialización del presente software son propiedad de [©afmonroy83](https://github.com/afmonroy83).

<!-- CONTACT -->
## Contact

>- TEL: (+57) 3138539968
>- Correo: felipe97.11@gmail.com
>- © afmonroy83

Link del proyecto: [https://github.com/afmonroy83/task_app](https://github.com/afmonroy83/task_app)
