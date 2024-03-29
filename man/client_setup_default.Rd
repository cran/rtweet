% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/client.R
\name{client_has_default}
\alias{client_has_default}
\alias{client_setup_default}
\title{Set up default client}
\usage{
client_has_default()

client_setup_default()
}
\value{
\code{client_setup_default()}: Invisibly returns the previous authentication mechanism.
\code{client_has_default()}: A logical value \code{TRUE} if there is a default authentication.
}
\description{
You'll need to run this function once per computer so that rtweet can use
your client.
}
\details{
It will use the current default account for rtweet and save them as "rtweet".
If a default is found it will use it instead.
}
\examples{
\dontrun{
if (!client_has_default()) {
   client_setup_default()
}
}
}
\seealso{
Other client: 
\code{\link{client_as}()},
\code{\link{client_get}()},
\code{\link{client_save}()}
}
\concept{client}
