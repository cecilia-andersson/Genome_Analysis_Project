#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J cean4862_metaquast
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules
module load bioinfo-tools quast/5.0.2

QUAST_HOME=/sw/bioinfo/quast/5.0.2/snowy/bin

# Run metaquast

metaquast.py /home/cean4862/genome_analysis/analyses/02_assembly/Megahit_co_out2/final.contigs.fa -t 2 -o metaquast_out
