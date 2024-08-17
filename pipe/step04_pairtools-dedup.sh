readID=$1
threadN=$2
MIN_MAPQ=$3

outDir=pairtools_aboveQ${MIN_MAPQ}/result

mkdir ${outDir}

pairtools \
    dedup \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --mark-dups \
    --output-stats ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats \
    --output ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam \
    ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.pairsam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.log \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.err