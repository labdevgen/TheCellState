datadir = $1
echo "downloading to $1"

awk -F "\t" '(NR>1){print $47}' DNAseIdata_relabeled_sample_nodup.csv | while read -r line; do echo $line; wget --directory-prefix=$1 $line; done
