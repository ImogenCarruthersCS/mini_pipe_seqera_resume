#!/usr/bin/env nextflow

nextflow.enable.dsl=2

process hello {
    script:
    """
    echo "Hello"
    """
}

process world {
    input:
    path(world_script)
    script:
    """
    python $world_script
    """ 
}

workflow {
    hello()
    world(file("${baseDir}/scripts/mini_process.py"))
}