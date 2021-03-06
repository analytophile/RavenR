#' Apply function for water year
#'
#' apply.wyearly.cols is a wrapper for apply.wyearly, and can be applied to
#' multiple columns of an xts data frame simultaneously.
#'
#' apply.wyearly.cols calculates a function FUN for the periods defined by the
#' water year, for each column in x. This similar to other functions of the
#' form apply.<time period>, for example apply.daily, apply.monthly, etc. This
#' is a function especially helpful to hydrology data or results.
#'
#' The function assumes an October 1st start to the water year. If the data
#' supplied is from, e.g. 2008-10-01 to 2009-09-30, the function will use the
#' September 30th date as the final day to apply the function for the water
#' year.
#'
#' Note that currently the water year calculation is done from Oct 2 to Oct 1st
#' (or September 30th) inclusive. For example in the Oct 1 2007 to Oct 1 2008
#' water year, the end date is shown as "2008-10-01", and the function will be
#' evaluated for the period 2007-10-02 - 2008-10-01, inclusive.
#'
#' @param x xts data frame to calculate FUN for
#' @param FUN the function to be applied
#' @param ... optional arguments to FUN
#' @seealso \code{\link{apply.wyearly}} for applying this function to a single
#' vector for most functions
#'
#' See also \href{http://www.civil.uwaterloo.ca/jrcraig/software.html}{James R.
#' Craig's research page} for software downloads
#' @keywords water year apply
#' @examples
#'
#' # read in forcing data (use sample data from package0
#' data(forcing.data)
#' myforcings <- forcing.data
#'
#' # apply max function for a subset of forcings data; apply to multuple columns
#' apply.wyearly.cols(myforcings$forcings[,2:6],max,na.rm=T)
#'
#' # date.end    rain    snow    temp temp_daily_min temp_daily_max
#' # 1 2008-10-01 42.3816 21.0574 23.6471        17.7238        29.9251
#' # 2 2009-10-01 32.3244 22.4554 22.9698        16.5001        31.6522
#' # 3 2010-10-01 28.8765 15.6819 25.3793        19.2377        33.5408
#' # 4 2011-10-01 34.1169 17.7208 26.6666        19.3770        33.9562
#' # 5 2012-10-01 31.5765 19.7667 24.5895        17.7214        33.2695
#' # 6 2013-10-01 39.0579 18.4998 25.6866        19.2614        32.5122
#' # 7 2014-10-01 36.2075 17.1476 23.8545        18.7127        30.6375
#' # 8 2015-10-01 26.8621 14.3349 23.7551        18.5327        32.2755
#'
#' @export apply.wyearly.cols
apply.wyearly.cols <- function(x,FUN,...) {

  if (missing(x)) {
    stop("Requires x object")
  }
  temp <- apply.wyearly(x[,1],FUN,...)
  # temp <- apply.wyearly(x[,1],sum)

  N <- nrow(temp)
  M <- ncol(x)
  dates <- temp[,1]
  mm <- matrix(NA,ncol=M,nrow=N)
  for (i in 1:M) {
    mm[,i] <- apply.wyearly(x[,i],FUN,...)[,2]
    # mm[,i] <- apply.wyearly(x[,i],sum)[,2]
  }
  ret <- data.frame(dates,mm)
  colnames(ret) <- c('date.end',colnames(x))
  return(ret)
}
