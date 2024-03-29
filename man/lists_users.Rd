% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lists_users.R
\name{lists_users}
\alias{lists_users}
\title{Get all lists a specified user subscribes to, including their own.}
\usage{
lists_users(user = NULL, reverse = FALSE, token = NULL, parse = TRUE)
}
\arguments{
\item{user}{Character vector of screen names or user ids.
See \code{\link[=as_screenname]{as_screenname()}} for more details.}

\item{reverse}{optional Set this to true if you would like owned lists
to be returned first. See description above for information on
how this parameter works.}

\item{token}{Use this to override authentication for
a single API call. In many cases you are better off changing the
default for all calls. See \code{\link[=auth_as]{auth_as()}} for details.}

\item{parse}{If \code{TRUE}, the default, returns a tidy data frame. Use \code{FALSE}
to return the "raw" list corresponding to the JSON returned from the
Twitter API.}
}
\value{
data
}
\description{
Get all lists a specified user subscribes to, including their own.
}
\seealso{
Other lists: 
\code{\link{lists_members}()},
\code{\link{lists_statuses}()},
\code{\link{lists_subscribers}()},
\code{\link{lists_subscriptions}()}
}
\concept{lists}
