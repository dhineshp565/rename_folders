# rename_folders
Pipeline for renaming barcode folders with sample names for Oxford sequencing data
* Renames sub-directories within fastq_pass and pod5_pass directories with samplename using a headerless csv with barcodes and samplename in column1 and column2 respectively
* Moves fastq_fail,pod5_fail and unclassifed to trash
## Usage
```
nextflow run main.nf --dir path/to/dir --csv sampllist.csv

--dir directory containing fastq_pass and pod5_pass
--csv headerless csv file with barcodes and samplename in column1 and column2 respectively

```
