#' qr app
#' @description  bankend part of app where all executions happen.
#' @param input from user
#' @param output wr we get
#'
#' @return app
#' @export
#'
#' @examples
server <-  function(input, output) {

  reactive({
    input$userinput
  })

  output$qr_code <- shiny::renderPlot({
    qr_data <- (lab05::fetch_qr(input$user_input, size = 150*150))
    a <-  png::readPNG(qr_data, native = FALSE, info = FALSE)
    b <-  matrix(a, nrow=150, byrow = TRUE)

    heatmap(b, Rowv = NA,
            Colv = NA, scale = "none", col = c("black", "white"),
            labRow = "", labCol = "")

  })


}


