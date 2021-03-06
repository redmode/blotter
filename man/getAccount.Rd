\name{getAccount}
\alias{getAccount}
\title{Get an account object from the .blotter environment}
\usage{
getAccount(Account, envir = .blotter)
}
\arguments{
  \item{Account}{string identifier for the account}

  \item{envir}{the environment to retrieve the account
  from, defaults to .blotter}
}
\value{
Account object
}
\description{
Retrieves an account object from the \code{.blotter}
environment.  Useful for local examination or charting, or
storing interim results for later reference.
}

