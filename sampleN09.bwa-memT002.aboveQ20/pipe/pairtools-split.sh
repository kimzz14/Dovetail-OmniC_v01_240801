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

pairtools \
    split \
    --nproc-in     ${threadN} \
    --nproc-out    ${threadN} \
    --output-pairs result/${readID}.split.pairs \
    --output-sam   result/${readID}.split.bam \
                   result/${readID}.pairsam.gz \
    1>             result/${readID}.split.bam.log \
    2>             result/${readID}.split.bam.err
