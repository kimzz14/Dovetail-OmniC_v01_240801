readID=$1
threadN=$2

pairtools \
    sort \
    --nproc ${threadN} \
    --tmpdir=./tmp \
    ${readID}.bwa_mem.pairsam \
    1> ${readID}.bwa_mem.sorted.pairsam \
    2> ${readID}.bwa_mem.sorted.pairsam.log