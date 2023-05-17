#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J cean4862_phylophlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

#activate conda environment
module load conda

source activate /home/cean4862/genome_analysis_test/envs/phylophlan/

# run phylophlan
phylophlan -i /home/cean4862/genome_analysis/analyses/06_phylogeny/input/metagenome -d phylophlan --diversity high -f /home/cean4862/genome_analysis_test/envs/phylophlan/lib/python3.11/site-packages/phylophlan/phylophlan_configs/supermatrix_aa.cfg

# run phylophlan metagenomic

phylophlan_metagenomic -i /home/cean4862/genome_analysis/analyses/06_phylogeny/input/metagenome -d SGB.Jul20
