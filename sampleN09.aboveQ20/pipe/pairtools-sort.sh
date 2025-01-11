############################################################################################
readID=$1
threadN=$2
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
    sort \
    --tmpdir ./tmp \
    --memory 32G \
    --nproc ${threadN} \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    result/${readID}.pairsam.gz \
    2> result/${readID}.sorted.pairsam.log \
    | bgzip > result/${readID}.sorted.pairsam.gz
