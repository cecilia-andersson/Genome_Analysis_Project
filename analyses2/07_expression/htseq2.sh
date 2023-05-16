#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:05:00
#SBATCH -J cean4862_htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules

module load bioinfo-tools htseq/2.0.2

# Path to files
bins='/home/cean4862/genome_analysis/analyses/04_annotation/prokka_b/bin'
bams='/home/cean4862/genome_analysis/analyses/05_rnamapping/bams/'
outfolder='/home/cean4862/genome_analysis/analyses/07_expression/output/'


# HTSeq loop

for VAR in {31..48};
do
number="$VAR"
location="D1"
location2="D3"


sed '/^##FASTA/Q' $bins$VAR/$VAR.gff > no_fasta$VAR.gff
htseq-count -f bam -r pos -t CDS -i ID $bams$number$location.bam no_fasta$VAR.gff > $outfo$
htseq-count -f bam -r pos -t CDS -i ID $bams$number$location2.bam no_fasta$VAR.gff >  $out$

done
