############################################################################################
threadN=$1
readID=$2
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

if [ -z ${threadN} ]; then
    echo "threadN is empty."
    exit 1
fi

bash ./pipe/pairtools-merge.sh ${threadN} ${readID}
bash ./pipe/pairtools-sort.sh  ${threadN} ${readID}
bash ./pipe/pairtools-dedup.sh ${threadN} ${readID}.sorted
bash ./pipe/library_QC.sh                 ${readID}.sorted.dedup
bash ./pipe/pairtools-split.sh ${threadN} ${readID}.sorted.dedup
bash ./pipe/samtools-sort.sh   ${threadN} ${readID}.sorted.dedup.split bam
