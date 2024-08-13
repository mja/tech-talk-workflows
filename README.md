# Workflows for reproducible, replicable, scalable, and portable science

Slides for a [Tech-Talk at the Alan Turing Institute](https://www.turing.ac.uk/events/tech-talk-workflows-part-reproducible-and-replicable-science).

Run one of the following commands to render the talk notebook (`workflows.html`):

## Make

```sh
make workflows.html
```

## Snakemake

```sh
snakemake -j1 workflows.html
```

## Nextflow

```sh
nextflow run notebooks.nf --notebook workflows.qmd -resume
```

## Requirements

- R libraries:
  - [ggplot2](https://ggplot2.tidyverse.org)
  - [simecol](http://simecol.r-forge.r-project.org)
- [Quarto](https://quarto.org)
- [Snakemake](https://snakemake.github.io)
- [Nextflow](https://www.nextflow.io)
- [GNU Make](https://www.gnu.org/software/make/)