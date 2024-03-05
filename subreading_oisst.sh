#!/bin/bash
 
#PBS -l ncpus=1
#PBS -l mem=3GB
#PBS -l jobfs=3GB
#PBS -q normal
#PBS -P v45
#PBS -l walltime=8:00:00
#PBS -l storage=gdata/ia39+scratch/v45
#PBS -l wd
#PBS -l software=matlab_utas
  
module load matlab/R2020b
module load matlab_licence/utas

matlab -nodisplay -nosplash < reading_oisstfiles.m