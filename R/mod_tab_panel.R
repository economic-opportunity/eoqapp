#' tab_panel UI Function
#'
#' @description A shiny Module.
#'
#' @param id,title,main_panel,input_options,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_tab_panel_ui <- function(id, title, main_panel, input_options){
  ns <- NS(id)
    tabPanel(
      title,
      sidebarLayout(
        sidebarPanel(
          mod_user_inputs_ui(id = ns("inputs"), input_options = input_options)
          ),
        mainPanel(
          main_panel
        )
      )
    )
}
    
#' tab_panel Server Function
#'
#' @noRd 
# mod_tab_panel_server <- function(input, output, session){
#   ns <- session$ns
#   
#   callModule(mod_user_inputs_server, input, output, session)
# 
# }
    
## To be copied in the UI
# mod_tab_panel_ui("tab_panel_ui_1")
    
## To be copied in the server
# callModule(mod_tab_panel_server, "tab_panel_ui_1")
 
