#readID=SRR19088062
readID=test
threadN=24

pairtools \
    split \
    --nproc-in ${threadN} \
    --nproc-out ${threadN} \
    --output-pairs ${readID}.bwa_mem.sorted.dedup.unsorted.pairs \
    --output-sam   ${readID}.bwa_mem.sorted.dedup.unsorted.bam \
    ${readID}.bwa_mem.sorted.dedup.pairsam \
    1> ${readID}.bwa_mem.sorted.dedup.unsorted.bam.log \
    2> ${readID}.bwa_mem.sorted.dedup.unsorted.bam.err