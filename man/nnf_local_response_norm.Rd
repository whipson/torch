% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nnf-normalization.R
\name{nnf_local_response_norm}
\alias{nnf_local_response_norm}
\title{Local_response_norm}
\usage{
nnf_local_response_norm(input, size, alpha = 1e-04, beta = 0.75, k = 1)
}
\arguments{
\item{input}{the input tensor}

\item{size}{amount of neighbouring channels used for normalization}

\item{alpha}{multiplicative factor. Default: 0.0001}

\item{beta}{exponent. Default: 0.75}

\item{k}{additive factor. Default: 1}
}
\description{
Applies local response normalization over an input signal composed of
several input planes, where channels occupy the second dimension.
Applies normalization across channels.
}
