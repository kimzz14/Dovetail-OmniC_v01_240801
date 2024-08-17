readID=$1
threadN=$2
MIN_MAPQ=$3

outDir=pairtools_aboveQ${MIN_MAPQ}/result

mkdir -p ${outDir}

pairtools \
    sort \
    --nproc ${threadN} \
    --tmpdir=./tmp \
    ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.pairsam \
    1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.pairsam \
    2> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.pairsam.log