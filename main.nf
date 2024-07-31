#!/usr/bin/env nextflow

nextflow.enable.dsl=2

process hello {
    script:
    """
    echo "Hello"
    """
}

process world {
    script:
    """
    mini_process.py
    """ 
}

workflow {
    hello()
    world()
}