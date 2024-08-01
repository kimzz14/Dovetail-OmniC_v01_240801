#readID=SRR19088062
readID=test
threadN=24

pairtools \
    dedup \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --mark-dups \
    --output-stats ${readID}.bwa_mem.sorted.dedup.pairsam.stats \
    --output ${readID}.bwa_mem.sorted.dedup.pairsam \
    ${readID}.bwa_mem.sorted.pairsam \
    1> ${readID}.bwa_mem.sorted.dedup.pairsam.log \
    2> ${readID}.bwa_mem.sorted.dedup.pairsam.err