workflow {
  PREY_CH = Channel.of(params.prey)
  PRED_CH = Channel.of(params.pred)
  LV(PREY_CH, PRED_CH)
}

process LV {

  publishDir 'lv', mode: 'copy'

  input:
  val prey
  val pred

  output:
  path("prey${prey}-pred${pred}.png")

  script:
  """
  #!Rscript

  library(simecol)

  # parameterise simulation
  data(lv)
  init(lv) <- c(prey = ${prey},
                predator = ${pred})

  # run simuilation
  simObj <- sim(lv)

  # make and save plot to output
  png("prey${prey}-pred${pred}.png")
  plot(simObj)
  dev.off()
  """

}