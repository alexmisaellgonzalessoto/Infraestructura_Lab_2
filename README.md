EXPLICACION PARA LA EJECUCIÓN:

    Se utilizó la imagen "nginx:stable-alpine3.21-perl" de DockerHub para subir las imagenes con el nombre app1, app2, app3 con docker.
    La secuencia de pasos para ejecutar el código en vs code es:
    - Ingresar a la carpeta desde la terminal con "cd <nombre_de_carpeta>"
    - Ejecutar en la terminal "terraform init"
    - Ejecutar "terraform workspace new app1" //Lo mismo para app2 y app3

    Esta parte se repite para app1, app2 y app3:
    - Ejecutar "terraform workspace select app1" 
    - Ejecutar "terraform plan"
    - Ejecutar "terraform apply"
    - Para comprobar que se haya subido la imagen a docker ejecutamos "docker ps"

    Imagen Redis - Postgres
    Se utilizó la imagen para postgres "postgres:latest" y para Redis "redis:8.2.1" de DockerHub para subir las imagenes con el nombre redis y postgres con docker.
    La secuencia de pasos para ejecutar el código en vs code es:
    - Ingresar a la carpeta desde la terminal con "cd <nombre_de_carpeta>"
    - Ejecutar en la terminal "terraform init"
    - Ejecutar "terraform plan"
    - Ejecutar "terraform apply"
    - Para comprobar que se haya subido la imagen a docker ejecutamos "docker ps"


    Se utilizó la imagen "grafana/grafana:latest" de DockerHub para subir la imagen con el nombre grafana con docker.
    La secuencia de pasos para ejecutar el código en vs code es:
    - Ingresar a la carpeta desde la terminal con "cd <nombre_de_carpeta>"
    - Ejecutar en la terminal "terraform init"
    - Ejecutar "terraform plan"
    - Ejecutar "terraform apply"
    - Para comprobar que se haya subido la imagen a docker ejecutamos "docker ps"

OBSERVACIONES:
    - Las versiones utilizadas para cada imagen son las siguientes:
        - nginx:stable-alpine3.21-perl
        - postgres:latest
        - redis:8.2.1
        - grafana/grafana:latest

    - Los puetos utilizados son:
        nginx:
            - 80
            - 3000
            - 4000
        redis:
            - 6379
        postges:
            - 5432
        grafana:
            - 3001 // La documentacion decía 3000 pero al estar utilizando el puerto 3000 en nginx se optó por usar el puerto 3001
