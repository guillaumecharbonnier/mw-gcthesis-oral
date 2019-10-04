rule r_gcthesis_acknowledgements:
    input:
        code="../mw-gcthesis-oral/src/r/acknowledgements.R",
        data="../mw-gcthesis-oral/acknowledgements.tsv"
    output:
        "out/r/gcthesis_acknowledgments/1.pdf",
        "out/r/gcthesis_acknowledgments/2.pdf"
    conda:
        "../envs/r_component_analysis.yaml"
    shell:
        "Rscript {input.code}"

