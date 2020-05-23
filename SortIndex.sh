#!/bin/bash
#SBATCH -n 12
#SBATCH -N 1
#SBATCH --mem 100000
#SBATCH -p serial_requeue
#SBATCH -o sort_%A.out
#SBATCH -e sort_%A.err
#SBATCH -J sort_chupa
#SBATCH -t 12:00:00

module load samtools

# Convert Sam format to Bam format:
#samtools view -bS /n/scratchlfs/liu_lab/cwilson/meRIP_ACTB/M3/hisat2/7.sam > /n/scratchlfs/liu_lab/cwilson/meRIP_ACTB/M3/hisat2/7.bam

# Sort each of the Sam files:
#samtools sort /n/scratchlfs/liu_lab/cwilson/meRIP_ACTB/M3/hisat2/7.bam > /n/scratchlfs/liu_lab/cwilson/meRIP_ACTB/M3/hisat2/7_sorted.bam

# Index each of the Bam files:
samtools index /n/scratchlfs/liu_lab/cwilson/meRIP_ACTB/M3/hisat2/7_sorted.bam
