############################################################################################
readID=$1
threadN=$2
MIN_MAPQ=$3
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

if [ -z ${threadN} ]; then
    echo "threadN is empty."
    exit 1
fi

if [ -z ${MIN_MAPQ} ]; then
    echo "MIN_MAPQ is empty."
    exit 1
fi

outDir=pairtools_aboveQ${MIN_MAPQ}

mkdir -p ${outDir}

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