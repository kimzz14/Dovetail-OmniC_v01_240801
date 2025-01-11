############################################################################################
threadN=$1
readID=$2
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

pairtools \
    parse \
    --min-mapq ${MIN_MAPQ} \
    --walks-policy 5unique \
    --max-inter-align-gap 30 \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --chroms-path bwaDB/ref.fa \
    result/${readID}.bam \
    2> result/${readID}.aboveQ${MIN_MAPQ}.pairsam.log \
    | bgzip > result/${readID}.aboveQ${MIN_MAPQ}.pairsam.gz
