readID=$1
threadN=$2
MIN_MAPQ=$3

python ./script/Omni-C/get_qc.py -p ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats 1> ${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats.report