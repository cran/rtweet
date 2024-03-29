% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statuses.R
\name{tweet_get}
\alias{tweet_get}
\title{Get tweet information}
\usage{
tweet_get(
  id,
  expansions = NULL,
  fields = NULL,
  ...,
  token = NULL,
  parse = TRUE,
  verbose = FALSE
)
}
\arguments{
\item{id}{At least a tweet id.}

\item{expansions}{Set \code{NULL} to not use any expansion, set \code{NA} to get all
expansions, or provide a vector with the expansions you want (create it with
\code{\link[=set_expansions]{set_expansions()}}).}

\item{fields}{Set \code{NULL} to not use any field, get all allowed fields with \code{NA},
provide a list with the fields you want (create it with \code{\link[=set_fields]{set_fields()}}).}

\item{...}{Other arguments passed to the API.}

\item{token}{This endpoint accepts a OAuth2.0 authentication (can be
created via \code{\link[=rtweet_oauth2]{rtweet_oauth2()}}) or a bearer token (can be created via \code{\link[=rtweet_app]{rtweet_app()}}).}

\item{parse}{If \code{TRUE}, the default, returns a tidy data frame. Use \code{FALSE}
to return the "raw" list corresponding to the JSON returned from the
Twitter API.}

\item{verbose}{A logical value to provide more information about the
paginated queries (if any) and to store the data of each page.}
}
\description{
Look up tweets up to 100 at the same time.
}
\examples{
if (FALSE){
 tweet_get("567053242429734913", parse = FALSE)
 tweet_get(c("567053242429734913", "567053242429734913"), parse = FALSE)
 tweet_get(c("567053242429734913", "567053242429734913"), parse = TRUE)
}
}
\references{
One tweet: \url{https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets-id}

Multiple tweets: \url{https://developer.twitter.com/en/docs/twitter-api/tweets/lookup/api-reference/get-tweets}
}
\seealso{
\code{\link[=lookup_tweets]{lookup_tweets()}}
}
