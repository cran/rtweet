% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trends.R
\name{get_trends}
\alias{get_trends}
\title{Get Twitter trends data.}
\usage{
get_trends(
  woeid = 1,
  lat = NULL,
  lng = NULL,
  exclude_hashtags = FALSE,
  token = NULL,
  parse = TRUE
)
}
\arguments{
\item{woeid}{Numeric, WOEID (Yahoo! Where On Earth ID) or character
string of desired town or country. Users may also supply latitude
and longitude coordinates to fetch the closest available trends
data given the provided location. Latitude/longitude coordinates
should be provided as WOEID value consisting of 2 numeric values
or via one latitude value and one longitude value (to the
appropriately named parameters).  To browse all available trend
places, see \code{\link[=trends_available]{trends_available()}}}

\item{lat}{Optional alternative to WOEID. Numeric, latitude in
degrees.  If two coordinates are provided for WOEID, this
function will coerce the first value to latitude.}

\item{lng}{Optional alternative to WOEID. Numeric, longitude in
degrees.  If two coordinates are provided for WOEID, this
function will coerce the second value to longitude.}

\item{exclude_hashtags}{Logical, indicating whether or not to
exclude hashtags. Defaults to FALSE--meaning, hashtags are
included in returned trends.}

\item{token}{Use this to override authentication for
a single API call. In many cases you are better off changing the
default for all calls. See \code{\link[=auth_as]{auth_as()}} for details.}

\item{parse}{If \code{TRUE}, the default, returns a tidy data frame. Use \code{FALSE}
to return the "raw" list corresponding to the JSON returned from the
Twitter API.}
}
\value{
Tibble data frame of trends data for a given geographical area.
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
}
\seealso{
\code{\link{rtweet-deprecated}}

Other trends: 
\code{\link{trends_available}()}
}
\concept{trends}
