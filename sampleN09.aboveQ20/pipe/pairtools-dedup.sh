############################################################################################
threadN=$1
readID=$2
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
    dedup \
    --n-proc ${threadN} \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --mark-dups \
    --output-stats result/${readID}.dedup.pairsam.stats \
    --output result/${readID}.dedup.pairsam.gz \
    result/${readID}.pairsam.gz \
    1> result/${readID}.dedup.pairsam.log \
    2> result/${readID}.dedup.pairsam.err
