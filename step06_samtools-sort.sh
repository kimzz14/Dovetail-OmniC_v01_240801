#readID=SRR19088062
readID=test
threadN=24

samtools \
    sort \
    --threads ${threadN} \
    -o ${readID}.bwa_mem.sorted.dedup.sorted.bam \
    ${readID}.bwa_mem.sorted.dedup.unsorted.bam \
    1> ${readID}.bwa_mem.sorted.dedup.sorted.bam.log \
    2> ${readID}.bwa_mem.sorted.dedup.sorted.bam.err

samtools index ${readID}.bwa_mem.sorted.dedup.sorted.bam