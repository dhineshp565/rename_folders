#!/bin/env bash
# rename files with fastq_pass and pod5_pass folder with samplename using a headerless csv with barcodes and samplename in column1 abd column2 respectively

#$1=directory with fastq_pass and pod5_pass directories
#$2=csv file with barcodes in the first coumn and samplename in the second column

#process fastq_pass

sed -i 's/ /_/g' $2
while read lines;do barcode=$(echo $lines|cut -f 1 -d',');sample=$(echo $lines|cut -f 2 -d ',');mkdir -p $1/fastq_pass/"${sample}";mv $1/fastq_pass/${barcode}/* $1/fastq_pass/"${sample}"/;done < $2
gio trash $1/fastq_fail/
gio trash $1/fastq_pass/barcode*
gio trash $1/fastq_pass/unclassified
