# Description of rule_1a
rule rule_1a:
    input:
        INPUT_1 = "file1.extension"
        INPUT_2 = "file2.extension"
    output:
        OUTPUT_1 = "file3.extension"        
    run:
        shell(
            f"""
            touch {input.INPUT_1} && 
            echo "hello, world"
            """
        )