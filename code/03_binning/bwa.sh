# Load modules
module load bioinfo-tools **BWA** **SAMTOOLS**

# Define paths
fapath='PATH TO ALIGNED FINAL CONTIGS'
fqpath='PATH TO DNA READS'

# Index, mem, use samtools to convert directly to .bam files

bwa mem -t 2 -p $fapath $fqpath | samtools view - > sorted29.bam
bwa mem -t 2 -p $fapath $fqpath | samtools view - > sorted33.bam

# Index bam files using samtools

samtools index sorted29.bam
samtools index sorted33.bam
