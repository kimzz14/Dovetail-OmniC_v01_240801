readID=$1
threadN=$2

python ./script/Omni-C/get_qc.py -p ${readID}.bwa_mem.sorted.dedup.pairsam.stats 1> ${readID}.bwa_mem.sorted.dedup.pairsam.stats.report