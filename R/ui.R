#' data from user
#'
#' @return user interface
#' @export
#'
#' @examples

ui <- function(){
  shiny::fluidPage(
    shiny::textAreaInput("user_input", "Enter your text", value = "defual" ),
    shiny::plotOutput("qr_code", width = "100%", height = "400px"),
  )
}
