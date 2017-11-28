library(dplyr)

dat_quality <- read.csv("~/Desktop/BST260-FALL2017/BST-260-Final-Project/DATA/2016_Child_and_Adult_Health_Care_Quality_Measures.csv")
dat_compendium <- read.csv("~/Desktop/BST260-FALL2017/BST-260-Final-Project/DATA/AHRQ_CHSP_Compendium-9-17.csv")
dat_ehr <- read.csv("~/Desktop/BST260-FALL2017/BST-260-Final-Project/DATA/Medicaid_Electronic_Health_Records_Incentive_Program_Provider_Payments__Beginning_2011.csv")
phys_data <- readRDS("~/Desktop/BST260-FALL2017/BST-260-Final-Project/phys.rds")
hosp_data <- readRDS("/Users/jiminyoo/Desktop/BST260-FALL2017/BST-260-Final-Project/hosp.rds")
vendor_hosp <- readRDS("/Users/jiminyoo/Desktop/BST260-FALL2017/BST-260-Final-Project/vendor_hosp.rds")
vendor_phys <- readRDS("/Users/jiminyoo/Desktop/BST260-FALL2017/BST-260-Final-Project/vendor_phys.rds")


##########################################################################################
################################EXPLORATORY ANALYSIS######################################
##########################################################################################

#COMPENDIUM DATA
colnames(dat_compendium)
nums <- sapply(dat_compendium, is.numeric)
numeric_cols <- colnames(dat_compendium[, nums])


hist(dat_compendium$total_mds, xlim=c(0,10000), breaks=50)
hist(dat_compendium$prim_care_mds)
hist(dat_compendium$grp_cnt)
hist(dat_compendium$hosp_cnt)
hist(dat_compendium$sys_beds)
hist(dat_compendium$sys_dsch)
hist(dat_compendium$sys_res)
hist(dat_compendium$maj_inv_owned)
hist(dat_compendium$deg_children)
hist(dat_compendium$sys_incl_majteachhosp)
hist(dat_compendium$sys_incl_vmajteachhosp)
hist(dat_compendium$sys_teachint)
hist(dat_compendium$sys_incl_highdpphosp)
hist(dat_compendium$sys_highucburden)


#################################################################################
######################Quality Measures Data#####################################
#################################################################################
#QUALITY MEASURE DATA
colnames(dat_quality)
plot(dat_quality$State)
table(dat_quality$Reporting.Program)
table(dat_quality$Measure.Name)
table(dat_quality$Rate.Definition)
table(dat_quality$Population)


##############################################################################
##########################JOIN DATASETS#######################################
##############################################################################
library(dplyr)
#MERGE BY NPI
class(hosp_data$NPI)
class(phys_data$NPI)
class(vendor_hosp$NPI)
class(vendor_phys$NPI)

#Extract unique NPIs
unique_hosp <- hosp_data[!duplicated(hosp_data$NPI),]
hosp_duplicates <- hosp_data[!duplicated(hosp_data$NPI),]
unique_phys <- phys_data[!duplicated(phys_data$NPI), ]
unique_vendor_hosp <- vendor_hosp[!duplicated(vendor_hosp$NPI), ]
unique_vendor_phys <- vendor_phys[!duplicated(vendor_phys$NPI), ]

#Combine hospital level data 
hosp_combined <-  left_join(vendor_hosp, unique_hosp, by = "NPI")
length(is.na(hosp_combined$First.Name))

#Combine physician level data
phys_combined <- left_join(vendor_phys, unique_phys, by = "NPI")
phys_inner <- inner_join(vendor_phys, phys_data, by=c("NPI"="NPI", "ZIP"="zip"))
#Extract unique NPIs from inner_joined data 
phys_dups <- phys_data[duplicated(phys_data$NPI),]
phys_dups <- phys_data[duplicated(phys_data$NPI) & duplicated(phys_data$zip), ]

nrow(phys_inner[!duplicated(phys_inner$NPI),])


#MERGE BY CCN
hosp_data$Hospital.affiliation.CCN.1 <- as.numeric(hosp_data$Hospital.affiliation.CCN.1)
inner_join(hosp_data, mu_report, by = c("Hospital.affiliation.CCN.1" = "CCN"))

