#!/usr/bin/env nextflow
nextflow.enable.moduleBinaries = true

include { hello } from './modules/hello'
include { world } from './modules/world'

workflow {
    hello()
    world()
}