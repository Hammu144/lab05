library(jsonlite)
library(httr)

main_api <- "https://api.qrserver.com"



fetch_qr <- function(name,size){
  parameters <- "/v1/create-qr-code/?size="
  data <- GET(url = paste0(main_api, parameters,size,"&data=" ,name))
  print(data$content)
}

fetch_qr("hamza","150*150")

