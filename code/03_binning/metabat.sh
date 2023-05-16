#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J cean4862_metabat 
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules

module load bioinfo-tools MetaBat/2.12.1 bwa/0.7.17 samtools/1.17

# Path to files

faPath='/home/cean4862/genome_analysis/analyses/02_assembly/Megahit_co_out2/final.contigs.fa'
# fqPath='/home/cean4862/genome_analysis/analyses/02_assembly/DNA_trimmed'

# creating depth file

jgi_summarize_bam_contig_depths --outputDepth depth.txt *.bam --referenceFasta $faPath


# running metabat

metabat2 -i $faPath -a depth.txt -o Metabat_output
