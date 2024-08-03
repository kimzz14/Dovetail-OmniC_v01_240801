readID=$1
threadN=$2
MIN_MAPQ=$3

pairtools \
    dedup \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --mark-dups \
    --output-stats ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats \
    --output ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam \
    ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.pairsam \
    1> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.log \
    2> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.err