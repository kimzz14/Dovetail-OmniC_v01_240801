#readID=SRR19088062
readID=test
threadN=24

python ./script/Omni-C/get_qc.py -p ${readID}.bwa_mem.sorted.dedup.pairsam.stats 1> ${readID}.bwa_mem.sorted.dedup.pairsam.stats.report