#!/usr/bin/env nextflow
nextflow.enable.dsl=2

process rename_folders {
    input:
    path(dir)
    path(csvfile)
   
    script:
    """
    rename_folders.sh ${dir} ${csvfile}
    """
}
workflow {
   
    result= rename_folders(params.dir,params.csv)
    
}