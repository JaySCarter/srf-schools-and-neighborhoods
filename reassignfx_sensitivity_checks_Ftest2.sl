#!/bin/bash


#SBATCH -p general

#SBATCH -N 1

#SBATCH -t 24:00:00

#SBATCH --mem=16g

#SBATCH -n 8

module add stata/16


stata-mp -b do reassignfx_sensitivity_checks_Ftest2.do
