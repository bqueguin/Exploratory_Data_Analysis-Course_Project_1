# This is a script to automatically check is the data is available
# and download it if it's necessary

setwd("/Users/QUEGUINER/Desktop/Cours/Autre/Coursera/Exploratory Data Analysis/week1/Exploratory_Data_Analysis-Course_Project_1/")
if (dir.exists("data") == F){
    dir.create("data")
}
if(file.exists("data/household.txt") == F){
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data/household.zip")
    unzip("data/household.zip", exdir = "data")
    file.rename("data/household_power_consumption.txt", "data/household.txt")
}