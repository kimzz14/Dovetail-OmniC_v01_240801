############################################################################################
threadN=$1
readID=
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

if [ -z ${threadN} ]; then
    echo "threadN is empty."
    exit 1
fi

sh ./pipe/pairtools-merge.sh ${threadN} ${readID}
sh ./pipe/pairtools-sort.sh  ${threadN} ${readID}
sh ./pipe/pairtools-dedup.sh ${threadN} ${readID}.sorted
sh ./pipe/library_QC.sh                 ${readID}.sorted.dedup
sh ./pipe/pairtools-split.sh ${threadN} ${readID}.sorted.dedup
sh ./pipe/samtools-sort.sh   ${threadN} ${readID}.sorted.dedup.split
