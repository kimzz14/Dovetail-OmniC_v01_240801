readID=$1
threadN=$2

pairtools \
    parse \
    --min-mapq 40 \
    --walks-policy 5unique \
    --max-inter-align-gap 30 \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --chroms-path \
    bwadb/ref.fa \
    ${readID}.bwa_mem.sam \
    1> ${readID}.bwa_mem.pairsam \
    2> ${readID}.bwa_mem.pairsam.log