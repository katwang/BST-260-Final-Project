install.packages("rvest")
library(rvest)
library(dplyr)
library(magrittr)

states <- read_html("https://www.ahd.com/state_statistics.html")
states %>%
  html_nodes("table") %>% 
  .[[2]] %>%
  html_table()


###READ HTML TABLES FOR EACH STATE 
ak <- read_html("https://www.ahd.com/states/hospital_AK.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
al <- read_html("https://www.ahd.com/states/hospital_AL.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ar <- read_html("https://www.ahd.com/states/hospital_AR.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
az <- read_html("https://www.ahd.com/states/hospital_AZ.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ca <- read_html("https://www.ahd.com/states/hospital_CA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
co <- read_html("https://www.ahd.com/states/hospital_CO.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ct <- read_html("https://www.ahd.com/states/hospital_CT.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
dc <- read_html("https://www.ahd.com/states/hospital_DC.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
de <- read_html("https://www.ahd.com/states/hospital_DE.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
fl <- read_html("https://www.ahd.com/states/hospital_FL.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ga <- read_html("https://www.ahd.com/states/hospital_GA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
hi <- read_html("https://www.ahd.com/states/hospital_HI.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ia <- read_html("https://www.ahd.com/states/hospital_IA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
id <- read_html("https://www.ahd.com/states/hospital_ID.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
il <- read_html("https://www.ahd.com/states/hospital_IL.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
IN <- read_html("https://www.ahd.com/states/hospital_IN.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ks <- read_html("https://www.ahd.com/states/hospital_KS.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ky <- read_html("https://www.ahd.com/states/hospital_KY.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
la <- read_html("https://www.ahd.com/states/hospital_LA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ma <- read_html("https://www.ahd.com/states/hospital_MA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
####################Above are scraped 
##Extra-scrape md and me. 
md <- read_html("https://www.ahd.com/states/hospital_MD.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
me <- read_html("https://www.ahd.com/states/hospital_ME.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
mi <- read_html("https://www.ahd.com/states/hospital_MI.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
mn <- read_html("https://www.ahd.com/states/hospital_MN.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
mo <- read_html("https://www.ahd.com/states/hospital_MO.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ms <- read_html("https://www.ahd.com/states/hospital_MS.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
nc <- read_html("https://www.ahd.com/states/hospital_NC.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
nd <- read_html("https://www.ahd.com/states/hospital_ND.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ne <- read_html("https://www.ahd.com/states/hospital_NE.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
nh <- read_html("https://www.ahd.com/states/hospital_NH.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
nj <- read_html("https://www.ahd.com/states/hospital_NJ.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
nm <- read_html("https://www.ahd.com/states/hospital_NM.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
nv <- read_html("https://www.ahd.com/states/hospital_NV.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ny <- read_html("https://www.ahd.com/states/hospital_NY.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
oh <- read_html("https://www.ahd.com/states/hospital_OH.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ok <- read_html("https://www.ahd.com/states/hospital_OK.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
or <- read_html("https://www.ahd.com/states/hospital_OR.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
pa <- read_html("https://www.ahd.com/states/hospital_PA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ri <- read_html("https://www.ahd.com/states/hospital_RI.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
sc <- read_html("https://www.ahd.com/states/hospital_SC.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
sd <- read_html("https://www.ahd.com/states/hospital_SD.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
tn <- read_html("https://www.ahd.com/states/hospital_TN.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
tx <- read_html("https://www.ahd.com/states/hospital_TX.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
ut <- read_html("https://www.ahd.com/states/hospital_UT.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
va <- read_html("https://www.ahd.com/states/hospital_VA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
vt <- read_html("https://www.ahd.com/states/hospital_VT.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
wa <- read_html("https://www.ahd.com/states/hospital_WA.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
wi <- read_html("https://www.ahd.com/states/hospital_WI.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
wy <- read_html("https://www.ahd.com/states/hospital_WY.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
mt <- read_html("https://www.ahd.com/states/hospital_MT.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()
wv <- read_html("https://www.ahd.com/states/hospital_WV.html") %>% html_nodes("table") %>% .[[2]] %>% html_table()

###Converting tables into data frames than row-bind into one data
#"ak_df" <- as.data.frame.matrix(ak_t) 
#"al_df" <- as.data.frame.matrix(eval(parse(text="al")))

#as.data.frame.matrix(cat("al", "\n"))
table_list <- c("ak","al", "ar", "az", "ca", "co", "ct", "dc", "de", "fl", "ga", "hi", "ia", "id", "il", "IN", "ks", "ky", "la", "ma")
table_list <- c("md", "me", "mi", "mn", "mo", "ms", "nc", "nd", "ne", "nh", "nj", "nm", "nv", "ny", "oh", "ok", "or", "pa", "ri","sc", "sd", "tn", "tx", "ut", "va", "vt", "wa", "wi", "wy")
table_list <- c("mt", "wv")
hosp_demo_data = data.frame()
for (table in table_list){
  #df_name <- paste(table,"_df",sep='') 
  state_df = as.data.frame.matrix(eval(parse(text=table)))
  state_df <-state_df[!(state_df$"Hospital Name"=="T O T A L"),]
  state_df$State <- table
  hosp_demo_data = rbind(hosp_demo_data, state_df)
}

setwd("~/Desktop/BST260-FALL2017/BST-260-Final-Project")
saveRDS(hosp_demo_data, file="hosp_demo_part1.rds")
saveRDS(hosp_demo_data, file="hosp_demo_part2.rds")
saveRDS(hosp_demo_data, file="hosp_demo_MoWv.rds")


#########################For loop try - failed###############################
# state_list <- c("AL","AR","AZ","CA","CO","CT","DC","DE","FL","GA","HI","IA","ID","IL","IN","KS","KY"
#                 ,"LA","MA","MD","ME","MI","MN","MO","MS","NC","ND","NE","NH","NJ","NM","NV","NY",
#                 "OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VA","VT","WA","WI","WY")
# new_df = ak_t
# for (state in state_list){
#   url = paste("https://www.ahd.com/states/hospital_", state, ".html", sep='')
#   temp <- read_html(url)
#   #table_name <- paste(state, "_table") 
#   t <- temp %>%
#     html_nodes("table") %>% 
#     .[[2]] %>%
#     html_table()
#   #rbind(new_df, t)
# }

getwd()








