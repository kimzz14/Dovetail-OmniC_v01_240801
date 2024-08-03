readID=$1
threadN=$2
MIN_MAPQ=$3

pairtools \
    sort \
    --nproc ${threadN} \
    --tmpdir=./tmp \
    ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam \
    1> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.pairsam \
    2> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.pairsam.log