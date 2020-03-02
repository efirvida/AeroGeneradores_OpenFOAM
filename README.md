# Simulación numérica de aerogeneradores con OpenFOAM

El presente repositorio incluye varios ejemplos de simulaciónes númericas de aerogeneradores (CFD) usando OpenFOAM. Diseñados para corridos en sistemas HPC con sistema SLURM como gestor de tareas.

## Casos incluidos

1. [NREL 5MW](./5MW)
2. [NREL Phase VI](./PhaseVI)
3. [Proyecto de Mexcio](./Mexico)

## Modo de ejecución

En caso que se requiera utilizar otra configuración de procesadores es nesesario editar el fichero `system/decomposeParDict` cambiado la variable `numberOfSubdomains`. Luego modificar `run.sl` y cambiar el `ntasks` en función del nuevo número de procesadores a utilizar.

Aseguese de que los ficheros `Allmesh`, `Allrun` y `Allclean` posean permiso de ejecución, de no ser así puede asignarselo usando

    chmod +x All*

- **Allmesh**: Script encargado de la creación de las mallas.
- **Allrun**: Script encargado de la ejecución de la simulación.
- **Allclean**: Script encargado de limpiar los resultados de la simulación.

### Sistemas HPC con SLURM

Cada caso viene con un script `run.sl` el cual incluye la configuración necesaria para agregar la simulación a la cola del HPC utilizando el comando.

    sbatch run.sl 

### Sistemas HPC sin SLURM

Para ejecutarlo con otro gestor de tarea solo debe adaptar los headers del fichero `run.sl` en función de su gestor de tareas.
