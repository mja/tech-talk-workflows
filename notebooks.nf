params.notebook = "*.qmd"

workflow {
  QMD_CH = Channel.fromPath(params.notebook)
  HTML_CH = RENDER(QMD_CH)
}

process RENDER {
  publishDir '.', mode: 'copy'

  input:
  path qmd

  output:
  path("${qmd.baseName}.html")

  script:
  """
  quarto render ${qmd}
  """
}