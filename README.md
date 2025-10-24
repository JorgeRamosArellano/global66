# test_jorge_ramos_globall66_flutter


# Clean Architecture

- Capa de configuración [/config]
    Se utiliza para la configuración, routes, seteo de data global para el launcher del app.

- Capa de data [/data]
    Donde están los endpoints para consumir los servicios, donde se guardan los manejadores de estado, preferences..

- Capa de dominio [/domain]
    Creación de entidades(models), gateway() y usecase(casos de uso)

- Capa visual [/ui]
    Vistas, oantallas, widgets, todo lo visual, que se pinta en la pantalla.
