readID=$1
threadN=$2
MIN_MAPQ=$3

samtools \
    sort \
    --threads ${threadN} \
    -o ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam \
    ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.bam \
    1> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam.log \
    2> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam.err

samtools index --csi ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam