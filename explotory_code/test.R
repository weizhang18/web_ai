## open web broswer
open_remote_driver()

## web and login info
website <- "http://www.livepositively.com/me/"
username <- "kongfuseo2000@gmail.com"
password <- "Newseoalbert01"

## open website
remDr$navigate(website)

## fill form
form_email <- remDr$findElement(using = "id", "email")
form_email$sendKeysToElement(list(username))

## click continue
btn_continue <- remDr$findElement(using = "id", "btn_submit")
btn_continue$clickElement()

## find password
form_password <- remDr$findElement(using = "id", "password")
form_password$sendKeysToElement(list(password))

## click connect
btn_connect <- remDr$findElement(using = "id", "btn_submit")
btn_connect$clickElement()

## click write story
remDr$navigate(paste0(website,"write.php"))

close_remote_driver()
