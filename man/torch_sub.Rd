% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen-namespace-docs.R,
%   R/gen-namespace-examples.R, R/gen-namespace.R
\name{torch_sub}
\alias{torch_sub}
\title{Sub}
\usage{
torch_sub(self, other, alpha = 1L)
}
\arguments{
\item{self}{(Tensor) the input tensor.}

\item{other}{(Tensor or Scalar) the tensor or scalar to subtract from \code{input}}

\item{alpha}{the scalar multiplier for other}
}
\description{
Sub
}
\section{sub(input, other, *, alpha=1, out=None) -> Tensor }{


Subtracts \code{other}, scaled by \code{alpha}, from \code{input}.

\deqn{
    \mbox{{out}}_i = \mbox{{input}}_i - \mbox{{alpha}} \times \mbox{{other}}_i
}

Supports broadcasting to a common shape ,
type promotion , and integer, float, and complex inputs.
}

\examples{
if (torch_is_installed()) {

a <- torch_tensor(c(1, 2))
b <- torch_tensor(c(0, 1))
torch_sub(a, b, alpha=2)
}
}
