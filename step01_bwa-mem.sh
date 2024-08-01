readID=SRR19088062
readDir=/archive/kimzz14/SRA_RAW/INSDC/Nibea_coibor/PRJNA827677
threadN=24

bwa \
    mem \
    -5SP \
    -T0 \
    -t ${threadN} \
    bwadb/ref.fa \
    ${readDir}/${readID}_1.fastq.gz \
    ${readDir}/${readID}_2.fastq.gz \
    -o ${readID}.bwa_mem.sam \
    1> ${readID}.bwa_mem.log \
    2> ${readID}.bwa_mem.err
