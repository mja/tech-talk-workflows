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