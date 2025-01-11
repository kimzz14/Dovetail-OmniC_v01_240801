############################################################################################
threadN=$1
readID=$2
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

sh ./pipe/bwa-memT002.sh     ${threadN} ${readID}
sh ./pipe/pairtools-parse.sh ${threadN} ${readID}.bwa-memT002 ${MIN_MAPQ}