install.packages("rvest")
library(rvest)

states <- read_html("https://www.ahd.com/state_statistics.html")
states_t <- states %>%
  html_nodes("table") %>%
  .[[2]] %>%
  html_table()

ak <- read_html("https://www.ahd.com/states/hospital_AK.html")

ak_t <- ak %>%
  html_nodes("table") %>%
  .[[2]] %>%
  html_table()


ca <- read_html("https://www.ahd.com/states/hospital_CA.html")

ca_t <- ca %>%
  html_nodes("table") %>%
  .[[2]] %>%
  html_table()

state_list <- c("AK","AL","AR","AZ","CA","CO","CT","DC","DE","FL","GA","HI","IA","ID","IL","IN","KS","KY","LA","MA","MD","ME","MI","MN","MO","MS","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WY")

for (state in state_list){
  url = paste("https://www.ahd.com/states/hospital_", state, ".html", sep='')
  temp <- read_html(url)
  #table_name <- paste(state, "_table")
  t <- temp %>%
    html_nodes("table") %>%
    .[[2]] %>%
    html_table(fill=TRUE)
  }
