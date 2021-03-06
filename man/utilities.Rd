% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{utilities}
\alias{utilities}
\title{Return the the utilities for a set of coefficients}
\usage{
utilities(model_spec, beta, data, availabilities, draws, nDraws)
}
\arguments{
\item{model_spec}{The generated model_spec.}

\item{beta}{The coefficients to use in the model when estimating the utilities.}

\item{data}{The dataframe of observations.}

\item{availabilities}{The availabilities of each alternative.}

\item{draws}{For mixed models, a matrix of draws. If none is provided, one is created.}

\item{nDraws}{The number of draws to use or generated.}
}
\value{
Dataframe of utilties for each observation
}
\description{
Return the the utilities for a set of coefficients
}
\examples{
\donttest{
  data("Train", package="mlogit")
  Train$ID <- Train$id
  Train$CHOICE <- as.numeric(Train$choice)
  
  est <- stats::setNames(c(1,1,1,1), c("B_price", "B_time", "B_timeB", "B_change"))
  
  availabilities <- mixl::generate_default_availabilities(Train, 2)
  
  Nindividuals <- length(unique(Train$ID))
  
  utility_script <- "
      U_A = @B_price * $price_A / 1000 + @B_time * $time_A / 60 + @B_change * $change_A;
      U_B = @B_price * $price_B / 1000 + @B_timeB * $time_B / 60 ;
      "
  
  model_spec <- mixl::specify_model(utility_script, Train)
  
  utilities_matrix = mixl::utilities(model_spec, est, Train, availabilities, NULL)
  
  utilities_matrix
}
}
