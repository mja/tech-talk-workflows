rule render:
  input: "{notebook}.qmd"
  output: "{notebook}.html"
  shell: "quarto render {input}"

rule lv:
  output: "lv/prey{prey}-predator{pred}.png"
  script: "scripts/lv.R"

# Simulate 100k genotypes for 2k samples
rule simu:
  output: multiext("sim/{bfile}", ".pgen", ".psam", ".pvar")
  threads: 1
  resources:
    mem_mb=1000
  shell: """
  plink2 --dummy 3000 100000 --out sim/{wildcards.bfile} \
  --threads {threads} --memory {resources.mem_mb}
  """

# run principal components analysis on genetic data
rule pca:
  input: multiext("sim/{bfile}", ".pgen", ".psam", ".pvar")
  output: multiext("pca/{bfile}", ".eigenval", ".eigenvec")
  threads: 4
  resources:
    mem_mb=8000
  shell: """
  plink2 --pfile sim/{wildcards.bfile} --pca \
  --out pca/{wildcards.bfile} \
  --threads {threads} --memory {resources.mem_mb}
  """