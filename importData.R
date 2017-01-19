setwd("/Users/QUEGUINER/Desktop/Cours/Autre/Coursera/Exploratory Data Analysis/week1/Exploratory_Data_Analysis-Course_Project_1/")
source("downloadData.R")

if(!exists("household") & !exists("feb_1_2_2007")){
    household <- read.table("data/household.txt", header = T, sep = ";",
                            na.strings = "?", stringsAsFactors = F)
    
    Moment <- paste(household$Date, household$Time, sep = "-")
    Moment <- strptime(Moment, format = "%d/%m/%Y-%H:%M:%S")
    household <- cbind(Moment, household[, 3:9])
    rm(Moment)
    
    feb_1_2_2007 <- subset(household, Moment >= "2007-02-01" & Moment < "2007-02-03")
    rownames(feb_1_2_2007) <- 1:nrow(feb_1_2_2007)
}
