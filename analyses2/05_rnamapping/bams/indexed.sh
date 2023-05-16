#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J cean4862_index
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu



module load bioinfo-tools samtools/1.17

# Path
bams='/home/cean4862/genome_analysis/analyses/05_rnamapping/bams'

for i in $bams/*;
do
samtools index $i
mv $i.bai bams/indexed/
done
