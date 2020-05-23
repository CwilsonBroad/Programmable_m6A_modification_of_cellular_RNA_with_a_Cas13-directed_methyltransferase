library(MeTDiff)

# in the real case, change the gtf to what you need
gtf <- ("/n/home06/cwilson/Genomes/hg38_IGENOME/Homo_sapiens/UCSC/hg38/Annotation/Genes/genes.gtf")

ip1 <- ("bams/control_1.m6A.bam")
ip2 <- ("bams/control_2.m6A.bam"")
ip3 <- ("bams/control_3.m6A.bam"")
ip4 <- ("bams/control_4.m6A.bam"")
input1 <- ("bams/control_1.input.bam")
input2 <- ("bams/control_2.input.bam")
input3 <- ("bams/control_3.input.bam")
input4 <- ("bams/control_4.input.bam")

Treated_ip1 <- ("bams/TRM_1.m6A.bam")
Treated_ip2 <- ("bams/TRM_2.m6A.bam")
Treated_ip3 <- ("bams/TRM_3.m6A.bam")
Treated_ip4 <- ("bams/TRM_4.m6A.bam")
Treated_input1 <- ("bams/TRM_1.input.bam")
Treated_input2 <- ("bams/TRM_2.input.bam")
Treated_input3 <- ("bams/TRM_3.input.bam")
Treated_input4 <- ("bams/TRM_4.input.bam")

IP_BAM <- c(ip1,ip2,ip3,ip4)
INPUT_BAM <- c(input1,input2,input3,input4)
TREATED_IP_BAM <- c(Treated_ip1,Treated_ip2,Treated_ip3,Treated_ip4)
TREATED_INPUT_BAM <- c(Treated_input1,Treated_input2,Treated_input3,Treated_input4)

data <- metdiff(GENE_ANNO_GTF=gtf,IP_BAM = IP_BAM,INPUT_BAM = INPUT_BAM,
TREATED_IP_BAM = TREATED_IP_BAM,TREATED_INPUT_BAM=TREATED_INPUT_BAM,
EXPERIMENT_NAME="ControlVsTreated", FRAGMENT_LENGTH = 220, OUTPUT_DIR = "~/Output/")
