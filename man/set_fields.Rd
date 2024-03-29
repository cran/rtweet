% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fields.R
\name{set_fields}
\alias{set_fields}
\title{Create fields}
\usage{
set_fields(
  media = media_fields,
  poll = poll_fields,
  tweet = tweet_fields,
  place = place_fields,
  user = user_fields,
  list = list_fields
)
}
\arguments{
\item{media}{The fields you want from \code{media_fields}.}

\item{poll}{The fields you want from \code{poll_fields}.}

\item{tweet}{The fields you want from \code{tweet_fields}.}

\item{place}{The fields you want from \code{place_fields}.}

\item{user}{The fields you want from \code{user_fields}.}

\item{list}{The fields you want from \code{list_fields}.}
}
\value{
A list with the fields requested ready to be used in your requests to
the API.
}
\description{
Choose which fields are used, by default all are returned. Usually all
the first 3 are accepted together and the last two too.
}
\examples{
set_fields()
set_fields(media = NULL)
set_fields(place = NULL, user = NULL)
}
\seealso{
Fields
}
