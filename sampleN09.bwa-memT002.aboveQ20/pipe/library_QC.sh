############################################################################################
readID=$1
############################################################################################

if [ -z ${readID} ]; then
    echo "readID is empty."
    exit 1
fi

python ../script/Omni-C/get_qc.py \
    -p result/${readID}.pairsam.stats \
    1> result/${readID}.pairsam.stats.report \
    2> result/${readID}.pairsam.stats.report.log
