readID=$1
threadN=$2
MIN_MAPQ=$3

outDir=pairtools_aboveQ${MIN_MAPQ}/result

mkdir ${outDir}

samtools \
    sort \
    --threads ${threadN} \
    -o ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam \
    ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.bam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam.log \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam.err

samtools index --csi ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam