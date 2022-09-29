# library(jsonlite)
library(httr)


#' Fetch_qr
#'
#' @param name a string
#' @param size a numeric
#'
#' @return raw data for qr
#' @export fetch_qr
#'
#' @examples
#' fetch_qr("hamza",200*200)



fetch_qr <- function(name,size){
  if(is.character(name)&&is.numeric(size)){
    main_api <- "https://api.qrserver.com"
  parameters <- "/v1/create-qr-code/?size="
  data <- httr::GET(url = paste0(main_api, parameters,size,"&data=" ,name))
  print(data$content)
  }
  else
  {
    stop("stop")
  }
}



