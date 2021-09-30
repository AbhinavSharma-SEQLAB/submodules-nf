nextflow.enable.dsl = 2


include { SAY_HELLO } from "./hello/sayhello.nf"

workflow {

    cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

    SAY_HELLO(cheers)
}
