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
    parse \
    --min-mapq ${MIN_MAPQ} \
    --walks-policy 5unique \
    --max-inter-align-gap 30 \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --chroms-path \
    bwaDB/ref.fa \
    result/${readID}.bwa_mem.sam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam.log