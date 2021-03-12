#' user_inputs UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_user_inputs_ui <- function(id, input_options){
  ns <- NS(id)
  tagList(
    selectInput(ns("edu"),
                h4("Your education level:"),
                choices = input_options$edu_levels),
    selectInput(ns("race"),
                h4("Your race/ethnicity:"),
                choices = input_options$races_ethnicities),
    selectInput(ns("age"),
                h4("Your age bracket:"),
                choices = input_options$age_ranges),
    selectInput(ns("sex"),
                h4("Your sex:"),
                choices = input_options$sexes)
    
  )
}
    
#' user_inputs Server Function
#'
#' @noRd 
mod_user_inputs_server <- function(input, output, session){
  ns <- session$ns

  output$filtered_df <- reactive({
    
  })
  
}
    
## To be copied in the UI
# mod_user_inputs_ui("user_inputs_ui_1")
    
## To be copied in the server
# callModule(mod_user_inputs_server, "user_inputs_ui_1")
 
