#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 20:00:00
#SBATCH -J cean4862_megahit_assembly1
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules
module load bioinfo-tools megahit/1.2.9

# Running megahit

megahit --kmin-1pass --num-cpu-threads 2 --k-min 65 --k-max 105 --k-step 10 -1 DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz,DNA_trimmed/SRR4342133_1.paired.trimmed.fastq.gz -2 DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz,DNA_trimmed/SRR4342133_2.paired.trimmed.fastq.gz -o Megahit_co_out2
