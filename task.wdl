version 1.0

task hello {
    input {
        String name
        # File request
        String DOCKER
        String MEMORY
        Int CPU
        Int SLEEP
        String DISK
    }

    command {
        sleep ${SLEEP}
        exit
    }

    output {
        # File response = request
    }

    runtime {
        docker: "${DOCKER}"
        memory: "${MEMORY}"
        cpu: "${CPU}"
        disks: "${DISK}"
    }
}
