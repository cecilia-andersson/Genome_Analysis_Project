#!/bin/sh
module load bioinfo-tools FastQC/0.11.9

# Running FastQC on untrimmed RNA

fastqc -o RNA_posttrim_quality /home/cean4862/genome_analysis/analyses/01_preprocessing/trimmomatic/RNA_trimmed_data/*
