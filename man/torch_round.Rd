% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen-namespace-docs.R,
%   R/gen-namespace-examples.R
\name{torch_round}
\alias{torch_round}
\title{Round}
\arguments{
\item{input}{(Tensor) the input tensor.}

\item{out}{(Tensor, optional) the output tensor.}
}
\description{
Round
}
\section{round(input, out=None) -> Tensor }{


Returns a new tensor with each of the elements of \code{input} rounded
to the closest integer.
}

\examples{

a = torch_randn(c(4))
a
torch_round(a)
}