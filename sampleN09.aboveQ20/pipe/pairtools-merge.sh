############################################################################################
threadN=$1
readID=$2
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

pairtools \
    merge \
    --tmpdir ./tmp \
    --memory 32G \
    --nproc ${threadN} \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --output result/${readID}.pairsam.gz \
    ../result/sample.OmniC.01C.aboveQ20.pairsam.gz \
    ../result/sample.OmniC.02C.aboveQ20.pairsam.gz \
    ../result/sample.OmniC.03C.aboveQ20.pairsam.gz \
    ../result/sample.OmniC.04C.aboveQ20.pairsam.gz \
    1> result/${readID}.pairsam.log \
    2> result/${readID}.pairsam.err \
