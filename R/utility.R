## change to not rowwise
unrowwise <- function(x) {
   class(x) <- c( "tbl_df", "data.frame")
   x
}

## open a remote driver
open_remote_driver <- function(){
      ## start the web driver
      remote_driver <<- 
         rsDriver(browser = "firefox",
                  verbose = F,
                  port = 4445L,
                  check = FALSE)
      
      ## Client side web driver
      remDr <<- remote_driver$client
      
      ## set windows size and hide
      #remDr$setWindowSize(50,50)
      #remDr$setWindowPosition(0,1450)
      
}

## close a remote driver
close_remote_driver <- function(){
   ## Close the web browser and stop the server 
   ## only NZG website needs Selenium
   remDr$close()
   remote_driver$server$stop()
}


