readID=$1
threadN=$2
MIN_MAPQ=$3

pairtools \
    parse \
    --min-mapq ${MIN_MAPQ} \
    --walks-policy 5unique \
    --max-inter-align-gap 30 \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --chroms-path \
    bwadb/ref.fa \
    ${readID}.bwa_mem.sam \
    1> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam \
    2> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam.log