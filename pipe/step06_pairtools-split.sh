readID=$1
threadN=$2
MIN_MAPQ=$3

outDir=pairtools_aboveQ${MIN_MAPQ}/result

mkdir -p ${outDir}

pairtools \
    split \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --output-pairs ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.pairs \
    --output-sam   ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.bam \
    ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.bam.log \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.bam.err