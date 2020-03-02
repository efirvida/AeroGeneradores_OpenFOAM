#!/bin/bash
#SBATCH --job-name=NREL_5MW               # Nombre del Trabajo
#SBATCH --mail-type=ALL                   # Eventos de notificación vía correo (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --partition=public                # Nombre de la partición donde se ejecutara el trabajo
#SBATCH --ntasks=136                      # Ejecutar una tarea simple	
#SBATCH --time=300:00:00                  # Limite de tiempo  hrs:min:sec
#SBATCH --output=serial_%j.out            # Salida estándar
#SBATCH --error=serial_%j.err             # Salida estándar y log de error
###################################
module load OpenFOAM
. $FOAM_BASH
cd $SLURM_SUBMIT_DIR

./Allclean
./Allmesh
./Allrun
