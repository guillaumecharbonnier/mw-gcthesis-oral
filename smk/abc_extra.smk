rule A:
    input: "{filler}.ext"
    output: "A{extra}/{filler}.ext"

rule B:
    input: "{filler}.ext"
    output: "B{extra}/{filler}.ext"

rule C:
    input: "{filler}.ext"
    output: "C{extra}/{filler}.ext"
