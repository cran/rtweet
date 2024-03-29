% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ts_plot.R
\name{ts_data}
\alias{ts_data}
\title{Converts tweets data into time series-like data object.}
\usage{
ts_data(data, by = "days", trim = 0L, tz = "UTC")
}
\arguments{
\item{data}{Data frame or grouped data frame.}

\item{by}{Desired interval of time expressed as numeral plus one of
"secs", "mins", "hours", "days", "weeks", "months", or
"years". If a numeric is provided, the value is assumed to be in
seconds.}

\item{trim}{Number of observations to trim off the front and end of
each time series}

\item{tz}{Time zone to be used, defaults to "UTC" (Twitter default)}
}
\value{
Data frame with time, n, and grouping column if applicable.
}
\description{
Returns data containing the frequency of tweets over a specified
interval of time. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
}
\seealso{
\code{\link{rtweet-deprecated}}
}
\keyword{internal}
