#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J cean4862_checkM
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules
module load bioinfo-tools CheckM/1.1.3

# Paths
binspath='/home/cean4862/genome_analysis/analyses/03_binning/Metabat_output/'
outpath='/home/cean4862/genome_analysis/analyses/03_binning/checkm/'
checkm='/home/cean4862/genome_analysis/analyses/03_binning/checkm/2015_01_16/'

# Tell CheckM where to find data

checkm data setRoot $checkm

# Run CheckM

checkm lineage_wf -t 4 -x fa $binspath $outpath --reduced_tree
