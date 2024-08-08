library(simecol)

# parameterise simulation
# get parameter values from file wildcards
# prey and predator initial values
data(lv)
init(lv) <- c(prey = as.numeric(snakemake@wildcards$prey),
              predator = as.numeric(snakemake@wildcards$pred))

# run simuilation
simObj <- sim(lv)

# make and save plot to specified output
png(snakemake@output[[1]])
plot(simObj)
dev.off()