readID=$1
threadN=$2
MIN_MAPQ=$3

outDir=pairtools_aboveQ${MIN_MAPQ}/result

mkdir -p ${outDir}

pairtools \
    parse \
    --min-mapq ${MIN_MAPQ} \
    --walks-policy 5unique \
    --max-inter-align-gap 30 \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --chroms-path \
    bwadb/ref.fa \
    result/${readID}.bwa_mem.sam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam.log