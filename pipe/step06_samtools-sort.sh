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

samtools \
    sort \
    --threads ${threadN} \
    -o ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam \
    ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.unsorted.bam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam.log \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam.err

samtools index --csi ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.sorted.bam