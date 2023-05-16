#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J cean4862_metabat 
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules

module load bioinfo-tools MetaBat/2.12.1 **bwa **samtools

# Running BWA to get bam file



# Sorting BAM file with samtools

samtools sort contigs_mapped.bam -o sorted.bam

# creating depth file

jgi_summarize_bam_contig_depths --outputDepth depth.txt --referenceFasta assembly.fa sorted.bam

# running metabat

metabat2 -i *INPUT FASTA* -a depth.txt -o *OUTFILE DIRECTORY*
