% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/premium.R
\name{search_fullarchive}
\alias{search_fullarchive}
\alias{search_30day}
\title{Premium Twitter searches}
\usage{
search_fullarchive(
  q,
  n = 100,
  fromDate = NULL,
  toDate = NULL,
  continue = NULL,
  env_name = NULL,
  premium = FALSE,
  safedir = NULL,
  parse = TRUE,
  token = NULL
)

search_30day(
  q,
  n = 100,
  fromDate = NULL,
  toDate = NULL,
  env_name = NULL,
  continue = NULL,
  premium = FALSE,
  safedir = NULL,
  parse = TRUE,
  token = NULL
)
}
\arguments{
\item{q}{Search query on which to match/filter tweets. See details for
information about available search operators.}

\item{n}{Desired number of results to return. Results are downloaded
in pages when \code{n} is large; the default value will download a single
page. Set \code{n = Inf} to download as many results as possible.

The Twitter API rate limits the number of requests you can perform
in each 15 minute period. The easiest way to download more than that is
to use \code{retryonratelimit = TRUE}.

You are not guaranteed to get exactly \code{n} results back. You will get
fewer results when tweets have been deleted or if you hit a rate limit.
You will get more results if you ask for a number of tweets that's not
a multiple of page size, e.g. if you request \code{n = 150} and the page
size is 200, you'll get 200 results back.}

\item{fromDate}{Oldest date-time (YYYYMMDDHHMM) from which tweets should be
searched for.}

\item{toDate}{Newest date-time (YYYYMMDDHHMM) from which tweets should be
searched for.}

\item{continue}{A character string with the next results of a query. You
must make the exact same query as the original, including \code{q}, \code{toDate},
and \code{fromDate}.}

\item{env_name}{Name/label of developer environment to use for the search.}

\item{premium}{A logical value if the environment is paid (TRUE) or
sandboxed, the default (FALSE). It limits the number of results retrieved so the number
of API queries needed to retrieve \code{n} results.}

\item{safedir}{Name of directory to which each response object should be
saved. If the directory doesn't exist, it will be created. If NULL (the
default) then a dir will be created in the current working directory. To
override/deactivate safedir set this to FALSE.}

\item{parse}{If \code{TRUE}, the default, returns a tidy data frame. Use \code{FALSE}
to return the "raw" list corresponding to the JSON returned from the
Twitter API.}

\item{token}{Use this to override authentication for
a single API call. In many cases you are better off changing the
default for all calls. See \code{\link[=auth_as]{auth_as()}} for details.}
}
\value{
A tibble data frame of Twitter data.
}
\description{
Search 30day or fullarchive premium products. There is a limit of 5000 tweets
and 25000 for the fullarchive and 30day endpoints respectively. In addition,
there are some limits in the number of requests that are possible on a
certain amount of time, this have already been taken into account.
See the info provided by Twitter and the "Developer Account" section.
}
\details{
Note: The \code{env_name} must match the ones you set up for the token you are using.
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}
}
\section{Developer Account}{

Users must have an approved developer account and an active/labeled
environment to access Twitter's premium APIs. For more information, to check
your current Subscriptions and Dev Environments, or to apply for a developer
account visit \url{https://developer.twitter.com}.
}

\section{Search operators}{

\emph{Note: Bolded operators ending with a colon should be immediately
followed by a word or quoted phrase (if appropriate)–e.g.,} \code{lang:en}
}

\section{Keyword}{

\itemize{
\item \strong{""}           ~~ match exact phrase
\item \strong{#}               ~~ hashtag
\item \strong{@}               ~~ at mentions)
\item \strong{url:}            ~~ found in URL
\item \strong{lang:}           ~~ language of tweet
}
}

\section{Accounts of interest}{

\itemize{
\item \strong{from:}           ~~ authored by
\item \strong{to:}             ~~ sent to
\item \strong{retweets_of:}    ~~ retweet author
}
}

\section{Tweet attributes}{

\itemize{
\item \strong{is:retweet}      ~~ only retweets
\item \strong{has:mentions}    ~~ uses mention(s)
\item \strong{has:hashtags}    ~~ uses hashtags(s)
\item \strong{has:media}       ~~ includes media(s)
\item \strong{has:videos}      ~~ includes video(s)
\item \strong{has:images}      ~~ includes image(s)
\item \strong{has:links}       ~~ includes URL(s)
\item \strong{is:verified}     ~~ from verified accounts
}
}

\section{Geospatial}{

\itemize{
\item \strong{bounding_box:[west_long south_lat east_long north_lat]} ~~ lat/long coordinates box
\item \strong{point_radius:[lon lat radius]} ~~ center of search radius
\item \strong{has:geo}           ~~ uses geotagging
\item \strong{place:}            ~~ by place
\item \strong{place_country:}    ~~ by country
\item \strong{has:profile_geo}   ~~ geo associated with profile
\item \strong{profile_country:}  ~~ country associated with profile
\item \strong{profile_region:}   ~~ region associated with profile
\item \strong{profile_locality:} ~~ locality associated with profile
}
}

\seealso{
\code{\link[=tweet_search_recent]{tweet_search_recent()}}, \code{\link[=tweet_search_all]{tweet_search_all()}}, \code{\link{rtweet-deprecated}}
}
\concept{premium endpoints}
