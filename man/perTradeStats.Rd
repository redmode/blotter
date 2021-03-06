\name{perTradeStats}
\alias{perTradeStats}
\title{calculate flat to flat per-trade statistics}
\usage{
perTradeStats(Portfolio, Symbol, includeOpenTrade = TRUE,
  tradeDef = "flat.to.flat", ...)
}
\arguments{
  \item{Portfolio}{string identifying the portfolio}

  \item{Symbol}{string identifying the symbol to examin
  trades for. If missing, the first symbol found in the
  \code{Portfolio} portfolio will be used}

  \item{includeOpenTrade}{whether to process only finished
  trades, or the last trade if it is still open, default
  TRUE}

  \item{tradeDef}{string to determine which definition of
  'trade' to use. Currently "flat.to.flat" (the default)
  and "flat.to.reduced" are implemented.}

  \item{\dots}{any other passthrough parameters}
}
\value{
A \code{data.frame} containing:

\describe{ \item{Start}{the \code{POSIXct} timestamp of the
start of the trade} \item{End}{the \code{POSIXct} timestamp
of the end of the trade, when flat} \item{Init.Pos}{the
initial position on opening the trade} \item{Max.Pos}{the
maximum (largest) position held during the open trade}
\item{Num.Txns}{ the number of transactions included in
this trade} \item{Max.Notional.Cost}{ the largest notional
investment cost of this trade} \item{Net.Trading.PL}{ net
trading P&L in the currency of \code{Symbol}} \item{MAE}{
Maximum Adverse Excursion (MAE), in the currency of
\code{Symbol}} \item{MFE}{ Maximum Favorable Excursion
(MFE), in the currency of \code{Symbol}}
\item{Pct.Net.Trading.PL}{ net trading P&L in percent of
invested \code{Symbol} price gained or lost}
\item{Pct.MAE}{ Maximum Adverse Excursion (MAE), in
percent} \item{Pct.MFE}{ Maximum Favorable Excursion (MFE),
in percent} \item{tick.Net.Trading.PL}{ net trading P&L in
ticks} \item{tick.MAE}{ Maximum Adverse Excursion (MAE) in
ticks} \item{tick.MFE}{ Maximum Favorable Excursion (MFE)
in ticks} }
}
\description{
One 'trade' is defined as the entire time the symbol is not
flat. It may contain many transactions.  From the initial
transaction that moves the position away from zero to the
last transaction that flattens the position is all one
'trade' for the purposes of this function.
}
\details{
This is sometimes referred to as 'flat to flat' analysis.

Note that a trade that is open at the end of the measured
period will be marked to the timestamp of the end of the
series. If that trade is later closed, the stats for it
will likely change. This is 'mark to market' for the open
position, and corresponds to most trade accounting systems
and risk systems in including the open position in
reporting.
}
\author{
Brian G. Peterson, Jan Humme
}
\references{
Tomasini, E. and Jaekle, U. \emph{Trading Systems - A new
approach to system development and portfolio optimisation}
(ISBN 978-1-905641-79-6)
}
\seealso{
\code{\link{chart.ME}} for a chart of MAE and MFE derived
from this function, and \code{\link{tradeStats}} for a
summary view of the performance
}

