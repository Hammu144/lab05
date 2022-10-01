# library(shiny)
# library(shinyWidgets)
# library(qrcode)
# library(shinythemes)
# library(lab05)
# library(png)
#
#
# ui <-  fluidPage(
#   textAreaInput("user_input", "Enter your text", value = "defual" ),
#   plotOutput("qr_code", width = "100%", height = "400px"),
# )
#
# server <-  function(input, output) {
#
#   reactive({
#     input$userinput
#   })
#
#   output$qr_code <- renderPlot({
#     qr_data <- (lab05::fetch_qr(input$user_input, size = 150*150))
#     a <-  readPNG(qr_data, native = FALSE, info = FALSE)
#     b <-  matrix(a, nrow=150, byrow = TRUE)
#
#     heatmap(b, Rowv = NA,
#             Colv = NA, scale = "none", col = c("black", "white"),
#             labRow = "", labCol = "")
#
#   })
#
#
# }
#
#
# shinyApp(ui, server)
