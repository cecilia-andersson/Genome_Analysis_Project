#!/bin/bash -l
#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J cean4862_prokka
#SBATCH --mail-type=ALL
#SBATCH --mail-user cecilia1@bu.edu

# Load modules
module load bioinfo-tools prokka/1.45-5b58020

#Paths
#bins='/domus/h1/cean4862/genome_analysis/analyses/03_binning/Metabat_output/*'
bins='/home/cean4862/genome_analysis/analyses/03_binning/Metabat_output'
outs='/domus/h1/cean4862/genome_analysis/analyses/04_annotation/prokka_b'

# Run Prokka on each bin in a loop

#for x in $bins
#do
#prokka $x --outdir $outs$x --prefix $x
#done

prokka $bins/1.fa --outdir $outs/bin1 --prefix 1
prokka $bins/2.fa --outdir $outs/bin2 --prefix 2
prokka $bins/3.fa --outdir $outs/bin3 --prefix 3
prokka $bins/4.fa --outdir $outs/bin4 --prefix 4
prokka $bins/5.fa --outdir $outs/bin5 --prefix 5
prokka $bins/6.fa --outdir $outs/bin6 --prefix 6
prokka $bins/7.fa --outdir $outs/bin7 --prefix 7
prokka $bins/8.fa --outdir $outs/bin8 --prefix 8
prokka $bins/9.fa --outdir $outs/bin9 --prefix 9
prokka $bins/10.fa --outdir $outs/bin10 --prefix 10
prokka $bins/11.fa --outdir $outs/bin11 --prefix 11
prokka $bins/12.fa --outdir $outs/bin12 --prefix 12
prokka $bins/13.fa --outdir $outs/bin13 --prefix 13
prokka $bins/14.fa --outdir $outs/bin14 --prefix 14
prokka $bins/15.fa --outdir $outs/bin15 --prefix 15
prokka $bins/16.fa --outdir $outs/bin16 --prefix 16
prokka $bins/17.fa --outdir $outs/bin17 --prefix 17
prokka $bins/18.fa --outdir $outs/bin18 --prefix 18
prokka $bins/19.fa --outdir $outs/bin19 --prefix 19
prokka $bins/20.fa --outdir $outs/bin20 --prefix 20
prokka $bins/21.fa --outdir $outs/bin21 --prefix 21
prokka $bins/22.fa --outdir $outs/bin22 --prefix 22
prokka $bins/23.fa --outdir $outs/bin23 --prefix 23
prokka $bins/24.fa --outdir $outs/bin24 --prefix 24
prokka $bins/25.fa --outdir $outs/bin25 --prefix 25
prokka $bins/26.fa --outdir $outs/bin26 --prefix 26
prokka $bins/27.fa --outdir $outs/bin27 --prefix 27
prokka $bins/28.fa --outdir $outs/bin28 --prefix 28
prokka $bins/29.fa --outdir $outs/bin29 --prefix 29
prokka $bins/30.fa --outdir $outs/bin30 --prefix 30
prokka $bins/31.fa --outdir $outs/bin31 --prefix 31
prokka $bins/32.fa --outdir $outs/bin32 --prefix 32
prokka $bins/33.fa --outdir $outs/bin33 --prefix 33
prokka $bins/34.fa --outdir $outs/bin34 --prefix 34
prokka $bins/35.fa --outdir $outs/bin35 --prefix 35
prokka $bins/36.fa --outdir $outs/bin36 --prefix 36
prokka $bins/37.fa --outdir $outs/bin37 --prefix 37
prokka $bins/38.fa --outdir $outs/bin38 --prefix 38
prokka $bins/39.fa --outdir $outs/bin39 --prefix 39
prokka $bins/40.fa --outdir $outs/bin40 --prefix 40
prokka $bins/41.fa --outdir $outs/bin41 --prefix 41
prokka $bins/42.fa --outdir $outs/bin42 --prefix 42
prokka $bins/43.fa --outdir $outs/bin43 --prefix 43
prokka $bins/44.fa --outdir $outs/bin44 --prefix 44
prokka $bins/45.fa --outdir $outs/bin45 --prefix 45
prokka $bins/46.fa --outdir $outs/bin46 --prefix 46
prokka $bins/47.fa --outdir $outs/bin47 --prefix 47
prokka $bins/48.fa --outdir $outs/bin48 --prefix 48
