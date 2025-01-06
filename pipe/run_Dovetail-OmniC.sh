############################################################################################
readID=$1
threadN=$2
MIN_MAPQ=$3
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

if [ -z ${threadN} ]; then
    echo "threadN is empty."
    exit 1
fi

if [ -z ${MIN_MAPQ} ]; then
    echo "MIN_MAPQ is empty."
    exit 1
fi

#sh ./pipe/step01_bwa-mem.sh ${readID} ${threadN}
#sh ./pipe/samtools-merge.sh 
sh ./pipe/step01_pairtools-parse.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step02_pairtools-sort.sh  ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step03_pairtools-dedup.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step04_library_QC.sh      ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step05_pairtools-split.sh ${readID} ${threadN} ${MIN_MAPQ}
sh ./pipe/step06_samtools-sort.sh   ${readID} ${threadN} ${MIN_MAPQ}