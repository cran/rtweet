% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tokens.R
\name{get_tokens}
\alias{get_tokens}
\alias{get_token}
\title{Fetching Twitter authorization token(s).}
\usage{
get_tokens()

get_token()
}
\value{
Twitter OAuth token(s) (Token1.0).
}
\description{
Call function used to fetch and load Twitter OAuth tokens.
Since Twitter application key should be stored privately, users should save
the path to token(s) as an environment variable. This allows Tokens
to be instantly [re]loaded in future sessions. See the "tokens"
vignette for instructions on obtaining and using access tokens.
}
\details{
This function will search for tokens using R, internal,
  and global environment variables (in that order).
}
\examples{

\dontrun{
## fetch default token(s)
token <- get_tokens()

## print token
token

}

}
\seealso{
Other tokens: 
\code{\link{create_token}()},
\code{\link{rate_limit}()}
}
\concept{tokens}
