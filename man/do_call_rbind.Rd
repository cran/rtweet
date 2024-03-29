% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/do_call_rbind.R
\name{do_call_rbind}
\alias{do_call_rbind}
\title{Binds list of data frames while preserving attribute (tweets or users) data.}
\usage{
do_call_rbind(x)
}
\arguments{
\item{x}{List of parsed tweets data or users data, each of which
presumably contains an attribute of the other (i.e., users data
contains tweets attribute; tweets data contains users attribute).}
}
\value{
A single merged (by row) data frame (tbl) of tweets or
users data that also contains as an attribute a merged (by row)
data frame (tbl) of its counterpart, making it accessible via the
\code{\link[=users_data]{users_data()}} or \code{\link[=tweets_data]{tweets_data()}} extractor
functions.
}
\description{
Row bind lists of tweets/users data whilst also preserving and binding
users/tweets attribute data. \ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
}
\seealso{
\code{\link{rtweet-deprecated}}
}
\concept{parsing}
