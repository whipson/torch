% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gen-namespace-docs.R,
%   R/gen-namespace-examples.R, R/wrapers.R
\name{torch_normal}
\alias{torch_normal}
\title{Normal}
\usage{
torch_normal(mean, std, size = NULL, generator = NULL, ...)
}
\arguments{
\item{mean}{(tensor or scalar double) Mean of the normal distribution.
If this is a \code{\link[=torch_tensor]{torch_tensor()}} then the output has the same dim as \code{mean}
and it represents the per-element mean. If it's a scalar value, it's reused
for all elements.}

\item{std}{(tensor or scalar double) The standard deviation of the normal
distribution. If this is a \code{\link[=torch_tensor]{torch_tensor()}} then the output has the same size as \code{std}
and it represents the per-element standard deviation. If it's a scalar value,
it's reused for all elements.}

\item{size}{(integers, optional) only used if both \code{mean} and \code{std} are scalars.}

\item{generator}{a random number generator created with \code{\link[=torch_generator]{torch_generator()}}. If \code{NULL}
a default generator is used.}

\item{...}{Tensor option parameters like \code{dtype}, \code{layout}, and \code{device}.
Can only be used when \code{mean} and \code{std} are both scalar numerics.}
}
\description{
Normal

Normal distributed
}
\note{
When the shapes do not match, the shape of \code{mean}
is used as the shape for the returned output tensor
}
\section{normal(mean, std, *) -> Tensor }{


Returns a tensor of random numbers drawn from separate normal distributions
whose mean and standard deviation are given.

The \code{mean} is a tensor with the mean of
each output element's normal distribution

The \code{std} is a tensor with the standard deviation of
each output element's normal distribution

The shapes of \code{mean} and \code{std} don't need to match, but the
total number of elements in each tensor need to be the same.
}

\section{normal(mean=0.0, std) -> Tensor }{


Similar to the function above, but the means are shared among all drawn
elements.
}

\section{normal(mean, std=1.0) -> Tensor }{


Similar to the function above, but the standard-deviations are shared among
all drawn elements.
}

\section{normal(mean, std, size, *) -> Tensor }{


Similar to the function above, but the means and standard deviations are shared
among all drawn elements. The resulting tensor has size given by \code{size}.
}

\examples{
if (torch_is_installed()) {

torch_normal(mean=0, std=torch_arange(1, 0, -0.1))
torch_normal(mean=0.5, std=torch_arange(1., 6.))
torch_normal(mean=torch_arange(1., 6.))
torch_normal(2, 3, size=c(1, 4))

}
}
