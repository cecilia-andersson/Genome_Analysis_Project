#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:05:00
#SBATCH -J cean4862_rnabwa
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Loading modules

module load bioinfo-tools bwa/0.7.17 samtools/1.17

# Path to files

#faPath='/home/cean4862/genome_analysis/analyses/02_alignment/RNA_'
#fqPath='/home/cean4862/genome_analysis/analyses/01_preprocessing/trimmomatic/RNA_trimmed_data'

# Running BWA to get bam file
#bwa index $faPath
#bwa mem -t 2 -p $faPath $fqPath/D1_fwd_paired_trimmed.fq.gz $fqPath/D1_rev_paired_trimmed.fastq.gz > 
#bwa mem -t 2 -p $faPath $fqPath/D3_fwd_paired_trimmed.fq.gz $fqPath/D3_rev_paired_trimmed.fastq.gz >



# Paths to files

binsPath='/home/cean4862/genome_analysis/analyses/03_binning/Metabat_output/'
fqD1f='/home/cean4862/genome_analysis/analyses/01_preprocessing/trimmomatic/RNA_trimmed_data/D1_fwd_paired_trimmed.fq.gz'
fqD1r='/home/cean4862/genome_analysis/analyses/01_preprocessing/trimmomatic/RNA_trimmed_data/D1_rev_paired_trimmed.fq.gz'
fqD3f='/home/cean4862/genome_analysis/analyses/01_preprocessing/trimmomatic/RNA_trimmed_data/D3_fwd_paired_trimmed.fq.gz'
fqD3r='/home/cean4862/genome_analysis/analyses/01_preprocessing/trimmomatic/RNA_trimmed_data/D3_rev_paired_trimmed.fq.gz'


# Loop to create bam files

#for i in {1..48};
#do
#bwa index $binsPath$i.fa
#bwa mem -t 2 -p $binsPath$i.fa $fqD1f $fqD1r | samtools view - > $iD1.bam
#bwa mem -t 2 -p $binsPath$i.fa $fqD3f $fqD3r | samtools view - > $iD3.bam

#samtools index $binsPath$iD1.bam
#samtools index $binsPath$iD3.bam
#done


#TRIAL

#bwa index $binsPath/1.fa
#bwa mem -t 2 -p $binsPath/1.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/1D1.bam
#bwa mem -t 2 -p $binsPath/1.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/1D3.bam

#bwa index $binsPath/2.fa
#bwa mem -t 2 -p $binsPath/2.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/2D1.bam
#bwa mem -t 2 -p $binsPath/2.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/2D3.bam

#bwa index $binsPath/3.fa
#bwa mem -t 2 -p $binsPath/3.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/3D1.bam
#bwa mem -t 2 -p $binsPath/3.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/3D3.bam

bwa index $binsPath/4.fa
bwa mem -t 2 -p $binsPath/4.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/4D1.bam
bwa mem -t 2 -p $binsPath/4.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/4D3.bam

bwa index $binsPath/5.fa
bwa mem -t 2 -p $binsPath/5.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/5D1.bam
bwa mem -t 2 -p $binsPath/5.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/5D3.bam

bwa index $binsPath/6.fa
bwa mem -t 2 -p $binsPath/6.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/6D1.bam
bwa mem -t 2 -p $binsPath/6.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/6D3.bam
bwa index $binsPath/7.fa
bwa mem -t 2 -p $binsPath/7.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/7D1.bam
bwa mem -t 2 -p $binsPath/7.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/7D3.bam
bwa index $binsPath/8.fa
bwa mem -t 2 -p $binsPath/8.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/8D1.bam
bwa mem -t 2 -p $binsPath/8.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/8D3.bam
bwa index $binsPath/9.fa
bwa mem -t 2 -p $binsPath/9.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/9D1.bam
bwa mem -t 2 -p $binsPath/9.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/9D3.bam

bwa index $binsPath/10.fa
bwa mem -t 2 -p $binsPath/10.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/10D1.bam
bwa mem -t 2 -p $binsPath/10.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/10D3.bam

bwa index $binsPath/11.fa
bwa mem -t 2 -p $binsPath/11.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/11D1.bam
bwa mem -t 2 -p $binsPath/11.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/11D3.bam
bwa index $binsPath/12.fa
bwa mem -t 2 -p $binsPath/12.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/12D1.bam
bwa mem -t 2 -p $binsPath/12.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/12D3.bam
bwa index $binsPath/13.fa
bwa mem -t 2 -p $binsPath/13.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/13D1.bam
bwa mem -t 2 -p $binsPath/13.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/13D3.bam
bwa index $binsPath/14.fa
bwa mem -t 2 -p $binsPath/14.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/14D1.bam
bwa mem -t 2 -p $binsPath/14.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/14D3.bam
bwa index $binsPath/15.fa
bwa mem -t 2 -p $binsPath/15.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/15D1.bam
bwa mem -t 2 -p $binsPath/15.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/15D3.bam
bwa index $binsPath/16.fa
bwa mem -t 2 -p $binsPath/16.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/16D1.bam
bwa mem -t 2 -p $binsPath/16.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/16D3.bam
bwa index $binsPath/17.fa
bwa mem -t 2 -p $binsPath/17.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/17D1.bam
bwa mem -t 2 -p $binsPath/17.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/17D3.bam
bwa index $binsPath/18.fa
bwa mem -t 2 -p $binsPath/18.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/18D1.bam
bwa mem -t 2 -p $binsPath/18.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/18D3.bam
bwa index $binsPath/19.fa
bwa mem -t 2 -p $binsPath/19.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/19D1.bam
bwa mem -t 2 -p $binsPath/19.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/19D3.bam

bwa index $binsPath/20.fa
bwa mem -t 2 -p $binsPath/20.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/20D1.bam
bwa mem -t 2 -p $binsPath/20.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/20D3.bam
bwa index $binsPath/21.fa
bwa mem -t 2 -p $binsPath/21.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/21D1.bam
bwa mem -t 2 -p $binsPath/21.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/21D3.bam
bwa index $binsPath/22.fa
bwa mem -t 2 -p $binsPath/22.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/22D1.bam
bwa mem -t 2 -p $binsPath/22.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/22D3.bam
bwa index $binsPath/23.fa
bwa mem -t 2 -p $binsPath/23.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/23D1.bam
bwa mem -t 2 -p $binsPath/23.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/23D3.bam
bwa index $binsPath/24.fa
bwa mem -t 2 -p $binsPath/24.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/24D1.bam
bwa mem -t 2 -p $binsPath/24.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/24D3.bam
bwa index $binsPath/25.fa
bwa mem -t 2 -p $binsPath/25.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/25D1.bam
bwa mem -t 2 -p $binsPath/25.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/25D3.bam
bwa index $binsPath/26.fa
bwa mem -t 2 -p $binsPath/26.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/26D1.bam
bwa mem -t 2 -p $binsPath/26.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/26D3.bam
bwa index $binsPath/27.fa
bwa mem -t 2 -p $binsPath/27.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/27D1.bam
bwa mem -t 2 -p $binsPath/27.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/27D3.bam
bwa index $binsPath/28.fa
bwa mem -t 2 -p $binsPath/28.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/28D1.bam
bwa mem -t 2 -p $binsPath/28.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/28D3.bam
bwa index $binsPath/29.fa
bwa mem -t 2 -p $binsPath/29.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/29D1.bam
bwa mem -t 2 -p $binsPath/29.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/29D3.bam

bwa index $binsPath/30.fa
bwa mem -t 2 -p $binsPath/30.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/30D1.bam
bwa mem -t 2 -p $binsPath/30.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/30D3.bam
bwa index $binsPath/31.fa
bwa mem -t 2 -p $binsPath/31.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/31D1.bam
bwa mem -t 2 -p $binsPath/31.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/31D3.bam
bwa index $binsPath/32.fa
bwa mem -t 2 -p $binsPath/32.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/32D1.bam
bwa mem -t 2 -p $binsPath/32.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/32D3.bam
bwa index $binsPath/33.fa
bwa mem -t 2 -p $binsPath/33.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/33D1.bam
bwa mem -t 2 -p $binsPath/33.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/33D3.bam
bwa index $binsPath/34.fa
bwa mem -t 2 -p $binsPath/34.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/34D1.bam
bwa mem -t 2 -p $binsPath/34.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/34D3.bam
bwa index $binsPath/35.fa
bwa mem -t 2 -p $binsPath/35.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/35D1.bam
bwa mem -t 2 -p $binsPath/35.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/35D3.bam
bwa index $binsPath/36.fa
bwa mem -t 2 -p $binsPath/36.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/36D1.bam
bwa mem -t 2 -p $binsPath/36.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/36D3.bam
bwa index $binsPath/37.fa
bwa mem -t 2 -p $binsPath/37.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/37D1.bam
bwa mem -t 2 -p $binsPath/37.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/37D3.bam
bwa index $binsPath/38.fa
bwa mem -t 2 -p $binsPath/38.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/38D1.bam
bwa mem -t 2 -p $binsPath/38.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/38D3.bam
bwa index $binsPath/39.fa
bwa mem -t 2 -p $binsPath/39.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/39D1.bam
bwa mem -t 2 -p $binsPath/39.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/39D3.bam

bwa index $binsPath/40.fa
bwa mem -t 2 -p $binsPath/40.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/40D1.bam
bwa mem -t 2 -p $binsPath/40.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/40D3.bam
bwa index $binsPath/41.fa
bwa mem -t 2 -p $binsPath/41.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/41D1.bam
bwa mem -t 2 -p $binsPath/41.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/41D3.bam
bwa index $binsPath/42.fa
bwa mem -t 2 -p $binsPath/42.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/42D1.bam
bwa mem -t 2 -p $binsPath/42.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/42D3.bam
bwa index $binsPath/43.fa
bwa mem -t 2 -p $binsPath/43.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/43D1.bam
bwa mem -t 2 -p $binsPath/43.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/43D3.bam
bwa index $binsPath/44.fa
bwa mem -t 2 -p $binsPath/44.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/44D1.bam
bwa mem -t 2 -p $binsPath/44.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/44D3.bam
bwa index $binsPath/45.fa
bwa mem -t 2 -p $binsPath/45.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/45D1.bam
bwa mem -t 2 -p $binsPath/45.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/45D3.bam
bwa index $binsPath/46.fa
bwa mem -t 2 -p $binsPath/46.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/46D1.bam
bwa mem -t 2 -p $binsPath/46.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/46D3.bam
bwa index $binsPath/47.fa
bwa mem -t 2 -p $binsPath/47.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/47D1.bam
bwa mem -t 2 -p $binsPath/47.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/47D3.bam
bwa index $binsPath/48.fa
bwa mem -t 2 -p $binsPath/48.fa $fqD1f $fqD1r | samtools sort -@2 -o $binsPath/48D1.bam
bwa mem -t 2 -p $binsPath/48.fa $fqD3f $fqD3r | samtools sort -@2 -o $binsPath/48D3.bam

