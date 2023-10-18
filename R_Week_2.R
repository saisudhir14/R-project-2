# Your vector of values
values <- c(60, 75, 71, 69, 83, 80, 78, 63, 100, 65, 64, 79, 80, 75, 69, 67, 75, 67, 63, 84, 73, 74,
            76, 75, 56, 69, 76, 66, 67, 69, 68, 81, 78, 75, 63, 77, 69, 88, 71, 76, 63, 67, 67, 65,
            90, 87, 70, 84)

# Scale values to 0's or 1's
scaled_values <- ifelse(values > median(values), 1, 0)

# Print the scaled values
print(scaled_values)



# Install and load necessary packages
install.packages("readxl")
install.packages("dplyr")

library(readxl)
library(dplyr)

#csv package 
install.packages("readr")
library(readr)


# Read data from Excel files
file1_data <- read_excel("C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state_data.xlsx")
#file2_data <- read_excel("C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\twitter_data.csv")

install.packages("readr")
library(readr)
file2_data <- read_csv("C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\art_data.csv")

# Perform the inner join based on the common header
joined_data <- inner_join(file1_data, file2_data, by = "State")

joined_data

#to display or output the joined_data in excel file
install.packages("writexl")
library(writexl)

#to create a new excel and to display the joined data in a new file
write_xlsx(joined_data, "C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\new_art.xlsx")

#to open the file using the R command 
system("start excel C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\new_art.xlsx.xlsx")


#-----------------------------------------------------------------------------------------------





#second attempt


## Install and load necessary packages
#install.packages("readxl")
#install.packages("dplyr")
#
#library(readxl)
#library(dplyr)
#
##csv package 
#install.packages("readr")
#library(readr)
#
## Read data from Excel files
#sudhir1Excel <- read_excel("C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx")
#sudhir1Excel
#
#sudhir2Excel <- read_csv("C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/art_data.csv")
#sudhir2Excel
#
#joined_data <- inner_join(sudhir1Excel, sudhir2Excel, by = "State")
#
#joined_data
#
#visualize_in_dataFrame <- data.frame(joined_data)
#visualize_in_dataFrame
#
##to display or output the joined_data in excel file
#install.packages("writexl")
#library(writexl)
#write_xlsx(joined_data, "C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\new_art_merged.xlsx")
#
#result <- inner_join(file1_data, file2_data, by = "State") %>%
#  select(-State)  # Exclude the "ID" column from the final result
#
#data.frame(result)
#
#write_xlsx(result, "C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\new_art_data_result.xlsx")
#write_xlsx(result)
#
##-------------------------------------------------------------------------------------------------------
##df <- list.files(path='"C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx"') %>% 
##  lapply(read_csv) %>% 
##  bind_rows
#
##library("dplyr")												 
##library("plyr")												 
##library("readr") 
##
##gfg_data <- list.files(path = "",	 
##                       pattern = "*.csv", full.names = TRUE) %>% 
##  lapply(read_csv) %>%										 
##  bind_rows													 
##
##gfg_data 
#
##-------------------------------------------------------------------------------------------------------
##-------------------------------------------------------------------------------------------------------
#
##install and load readxl package
#install.packages('readxl')
#library(readxl)
#
##import Excel file into R
#data <- read_excel('C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx')
#
##view entire dataset
#data
#
## Load the readxl package if not already loaded
#library(readxl)
#
## Specify the path to your Excel file
#US_State_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
#
## Read the Excel file into a data frame
#data <- read_excel(US_State_file_path)
#
## View the content of the data frame
#data
#
#library(readxl)
#US_state <- read_excel("C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx")
#View(US_state)
#
##---------------------------------------------------------------------------------------------------
#
## Install the readr package (if not already installed)
#install.packages("readr")
#
## Load the readr package
#library(readr)
#
#
##---------------------------------------------------------------------------------------------------
#
## Load the required libraries
#library(readxl)
#library(openxlsx)
#
## Specify the paths to your Excel files
#us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
#art_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/art_data.csv'
#
## Read the US_state Excel file into a data frame
#us_state_data <- read_excel(us_state_file_path)
#
## Read the art_data Excel file into a data frame
#art_data <- read_csv(art_data_file_path)
#
## Merge the two data frames by the "State" column and keep only the "art" column
#result <- merge(us_state_data, art_data, by = "State", all.x = TRUE)[, c("State", "art.x")]
#
## Rename the "art.x" column to "art"
#colnames(result) <- c("State", "art")
#
## Specify the path to the new Excel file
#output_excel_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/merged_data.xlsx'
#
## Write the merged data frame to a new Excel file
#write.xlsx(result, file = output_excel_file_path, row.names = FALSE)
#
## Confirm that the data has been written to the new Excel file
#print("Data has been written to the new Excel file.")
#
#install.packages("openxlsx")
#
#
##install.packages("xlsx")
##library(xlsx)
##write_xlsx(result, "C:\\Users\\sudhi\\Downloads\\BIS_581\\2nd\\2ndAssignment\\new_art1.xlsx")
##view(result)
#
##---------------------------------------------------------------------------------------------------
##---------------------------------------------------------------------------------------------------