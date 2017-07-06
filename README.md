[![Build Status](https://travis-ci.org/gstn-caruso/tsundoku.svg?branch=master)](https://travis-ci.org/gstn-caruso/tsundoku)

## Cómo se usa
* Tenemos la aplicación hosteada en Heroku, pueden acceder desde https://tsundoku-ar.herokuapp.com
* Para poder gestionar el contenido (por ahora sólo imágenes), debe acceder a https://tsundoku-ar.herokuapp.com/images
* Para poder ver una imagen en particular, debe ingresar a https://tsundoku-ar.herokuapp.com/welcome/index/ID-DE-LA-IMAGEN y luego apuntar a un marcador HIRO desde el dispositivo donde abrió la aplicación
* Si simplemente ingresa a la ruta principal, la aplicación mostrará la primer imagen que encuentre.

## Cómo configurar el entorno de desarrollo
### Clonar el proyecto
Lo primero que debemos hacer es `git clone git@gitlab.com:unq-tpi-eis-alumnos-2017-s1/grupal-tsundoku.git`
### Instalando Ruby
Una vez descargado el proyecto, lo siguiente que debemos hacer es instalar un manejador de versions de Ruby, en nuestro caso utilizaremos RVM. Las instrucciones de instalación las podemos encontrar [haciendo click acá](https://rvm.io/rvm/install).
Habiendo instalado RVM como nos indica la documentación oficial, abrimos una consola y nos posicionamos en el directorio raíz del proyecto y seguimos las instrucciones que RVM nos indica por consola, esto nos instalará la versión adecuada del intérprete de Ruby. **Es un proceso que puede llevar un tiempo**, ya que lo que hace es descargar el código fuente del intérprete y compilarlo en nuestra máquina.

### Instalando PostgreSQL
Es un procedimiento extenso de documentar, así que te pido que trates de buscar por tu cuenta hasta que pueda finalizar la documentación.
**Es necesario que realices la instalación antes de continuar.**

### Instalando Ruby on Rails
Antes que nada, lo primero que deberíamos hacer es ejecutar `ruby -v` y asegurarnos de que la versión de Ruby que estamos utilizando, es la que esperamos (la que se indica en el Gemfile).
Lo siguiente que debemos hacer es instalar [Bundler](http://bundler.io/), un gestor de _gemas_. Esto lo haremos ejecutando `gem install bundler`.
Finalmente utilizamos Bundler para instalar todo lo especificado en el Gemfile ejecutando `bundler install`. **Si no hemos instalado PostgreSQL este proceso fallará, ya que no va a poder instalar la gema `pg`.**

#### Configurando Ruby on Rails
Una vez instalado todo lo necesario, debemos dejar que Rails configure las bases de datos.
Utilizaremos dos bases de datos, una para desarrollo, que es la que guardará los datos que generemos cuando ejecutemos la aplicación localmente y otra para test, que es la que se crea cada vez que ejecutamos un test.
Para hacer esto, Rails espera que exista un achivo llamado `Database.yml` ubicado dentro del directorio `config/`. Dado que no existe y **es una mala práctica subirlo**, ya que aquí debemos poner nuestras credenciales de PostgreSQL, este archivo fue agregado al `.gitignore` y debemos generarlo, podemos copiar el que utiliza Gitlab-Ci y agregarle nuestras credenciales, esto lo podemos hacer ejecutando `cp config/database.yml.gitlab config/database.yml`.
Una vez generado nuestro archivo de configuración, lo que debemos hacer es indicarle a Rails que genere las bases de datos, ejecutando `rails db:setup` y podemos probar si todo funciona adecuadamente iniciando la aplicación ejecutando `rails s`.

### Configurando la IDE
En este caso recomiendo utilizar Rubymine, requeire la JDK, preferentemente superior a 1.8 de Oracle. Podemos descargar lo necesario de la [página de Jetbrains](https://www.jetbrains.com/ruby/download/).
Inicialmente tenemos un período de prueba de 30 días, pero podemos utilizar una prueba de 1 año [si lo solicitamos](https://www.jetbrains.com/student/) con la [cuenta de mail provista por la UNQ](https://alu.unq.edu.ar/).

Una vez instalado el programa, si queremos asegurarnos de que estamos utilizando la versión adecuada del intérprete de Ruby yendo a _Settings > Languages & Frameworks > Ruby SDK and Gems_, aquí deberá aparecer seleccionada la versión que esperamos usar de Ruby.
