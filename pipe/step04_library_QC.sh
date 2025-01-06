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

outDir=pairtools_aboveQ${MIN_MAPQ}

mkdir -p ${outDir}

python ./script/Omni-C/get_qc.py -p ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats 1> ${outDir}/${readID}.bwa_mem.aboveQ${MIN_MAPQ}.sorted.dedup.pairsam.stats.report