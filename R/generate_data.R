#' Get input options for user input
#'
#' @return list
#' @export
#'
#' @examples
get_input_options <- function() {
  input_options <- list()
  
  input_options$races_ethnicities <- c("All", "White", "Black", "Asian", "Hispanic", "Other")
  input_options$age_ranges <- c("All", "Under 25", "25-34", "35-44", "45-54", "55-64", "Over 65")
  input_options$edu_levels <- c("All", "Less Than High School", "High School",
                  "Bachelor's Degree", "Advanced Degree")
  input_options$sexes <- c("All", "Male", "Female")
  
  return(input_options)
}

#' Get input options for individual job UI
#'
#' @return
#' @export
#'
#' @examples
get_individual_input_options <- function(){
 
  input_options <- get_input_options()
  individual_input_options <- lapply(input_options, function(x) x[x != "All"])
  
  return(individual_input_options)
}
