version 1.0

import "./task.wdl" as t

workflow test {
    input {
        String name1
        # String name2
        # File request
        String DOCKER
        String MEMORY
        Int CPU
        Int SLEEP
    }

    call t.hello as step1 {
        input: name = name1, DOCKER= DOCKER , MEMORY= MEMORY, CPU= CPU , SLEEP= SLEEP
    }

    # call t.hello as step21 {
    #    input: name = name2, request = step1.response, DOCKER= DOCKER , MEMORY= MEMORY, CPU= CPU, SLEEP= SLEEP
    # }

    output {
        String resp = "abc"
        # File response1 = step21.response
        # File response1 = step1.response
    }
}
