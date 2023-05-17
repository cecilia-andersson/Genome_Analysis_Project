#!/bin/bash -l
#SBATCH -A uppmax2023-2-8 -M snowy
#SBATCH -p core
#SBATCH -J trimming
#SBATCH -t 25:00

java -jar $TRIMMOMATIC_HOME/trimmomatic-0.39.jar PE /domus/h1/cean4862/genome_analysis/analyses/01_preprocessing/RNA_untrimmed_data/SRR4342137.1.fastq.gz /domus/h1/cean4862/genome_analysis/analyses/01_preprocessing/RNA_untrimmed_data/SRR4342137.1.fastq.gz D1_fwd_paired.fq.gz D1_fwd_unpaired.fq.gz D1_rev_paired.fq.gz D1_rev_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36


java -jar $TRIMMOMATIC_HOME/trimmomatic-0.39.jar PE /domus/h1/cean4862/genome_analysis/analyses/01_preprocessing/RNA_untrimmed_data/SRR4342139.1.fastq.gz /domus/h1/cean4862/genome_analysis/analyses/01_preprocessing/RNA_untrimmed_data/SRR4342139.1.fastq.gz D3_fwd_paired.fq.gz D3_fwd_unpaired.fq.gz D3_rev_paired.fq.gz D3_rev_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36
