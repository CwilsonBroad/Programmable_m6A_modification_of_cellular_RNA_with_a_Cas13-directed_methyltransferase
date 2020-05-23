#!/bin/bash
#SBATCH -n 12
#SBATCH -N 1
#SBATCH --mem 120000
#SBATCH -p serial_requeue
#SBATCH -o hisat2_%A.out
#SBATCH -e hisat2_%A.err
#SBATCH -J hisat2_chupa
#SBATCH -t 24:00:00

module load hisat2

REF_DIR=~/hg38
READS_DIR=~/reads
OUTPUT_DIR=~/output

hisat2 -x $REF_DIR/genome -U $READS_DIR/19.fastq.gz -S $OUTPUT_DIR/19.sam -p 12
