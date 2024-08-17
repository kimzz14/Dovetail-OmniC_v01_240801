readID=$1
threadN=$2
MIN_MAPQ=$3

outDir=pairtools_aboveQ${MIN_MAPQ}/result

mkdir -p ${outDir}

python ./script/Omni-C/get_qc.py -p ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats 1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats.report