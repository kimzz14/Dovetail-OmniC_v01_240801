readID=$1
threadN=$2
MIN_MAPQ=$3

sh ./pipe/step01_bwa-mem.sh ${readID} ${threadN}
sh ./pipe/step02_pairtools-parse.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step03_pairtools-sort.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step04_pairtools-dedup.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step05_library_QC.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step06_pairtools-split.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step07_samtools-sort.sh ${readID} ${threadN} ${MIN_MAPQ}