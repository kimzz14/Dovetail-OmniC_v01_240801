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

samtools sort \
    --threads ${threadN} \
    -o result/${readID}.sorted.bam \
    ${readID}.bam \
    1 > result/${readID}.sorted.bam.log \
    2 > result/${readID}.sorted.bam.err

samtools index -c result/${readID}.sorted.bam
