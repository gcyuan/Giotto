% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary_giotto.R
\name{filterGiotto}
\alias{filterGiotto}
\title{filterGiotto}
\usage{
filterGiotto(
  gobject,
  expression_values = c("raw", "normalized", "scaled", "custom"),
  expression_threshold = 1,
  gene_det_in_min_cells = 100,
  min_det_genes_per_cell = 100,
  verbose = F
)
}
\arguments{
\item{gobject}{giotto object}

\item{expression_values}{expression values to use}

\item{expression_threshold}{threshold to consider a gene expressed}

\item{gene_det_in_min_cells}{minimum # of cells that need to express a gene}

\item{min_det_genes_per_cell}{minimum # of genes that need to be detected in a cell}

\item{verbose}{verbose}
}
\value{
giotto object
}
\description{
filter Giotto object based on expression threshold
}
\details{
The function \code{\link{filterCombinations}} can be used to explore the effect of different parameter values.
}
\examples{

data(mini_giotto_single_cell)

filtered_gobject = filterGiotto(mini_giotto_single_cell,
                                gene_det_in_min_cells = 10,
                                min_det_genes_per_cell = 10)


}
