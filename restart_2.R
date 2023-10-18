#
# Load the required libraries if not already loaded
library(readxl)
library(dplyr)

# Here's my file path
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
art_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/art_data.csv'
facebook <- 'facebookFilePath'

# Trying to put the excel data in the dataFrames data and art_data
data <- read_excel(us_state_file_path)
art_data <- read_csv(art_data_file_path)

#Trying to innerJoin based on state column
result <- inner_join(data, art_data, by = "State")

# In the above dataFrame, I'm trying to update the art data in the above data
data$art <- result$art.y

# View the updated data frame
data

# Load the required library if not already loaded
library(openxlsx)

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)


#------------ Facebook ------------------------------------------------------
# Load the required libraries if not already loaded
library(readxl)
library(dplyr)

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
facebook_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/facebook_data.csv'
print('file path close')
# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
facebook_data_file_path <- read_csv(facebook_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, facebook_data_file_path, by = "State")

# Update the "facebook" column in the original data frame with values from the joined data
data$facebook <- result$facebook.y

# View the updated data frame
data

# Load the required library if not already loaded
library(openxlsx)

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)

#------------ entrepreneurship------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
entrepreneurship_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/entrepreneurship_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
entrepreneurship_data_file_path <- read_csv(entrepreneurship_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, entrepreneurship_data_file_path, by = "State")

# Update the "entrepreneurship" column in the original data frame with values from the joined data
data$entrepreneurship <- result$entrepreneurship.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)


#------------ privacy------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
privacy_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/privacy_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
privacy_data_file_path <- read_csv(privacy_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, privacy_data_file_path, by = "State")

# Update the "privacy" column in the original data frame with values from the joined data
data$privacy <- result$privacy.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)

#------------instagram  ------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
instagram_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/instagram_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
instagram_data_file_path <- read_csv(instagram_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, instagram_data_file_path, by = "State")

# Update the "instagram" column in the original data frame with values from the joined data
data$instagram <- result$instagram.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)

#------------twitter------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
twitter_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/twitter_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
twitter_data_file_path <- read_csv(twitter_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, twitter_data_file_path, by = "State")

# Update the "twitter" column in the original data frame with values from the joined data
data$twitter <- result$twitter.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)

#------------gdpr------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
gdpr_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/gdpr_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
gdpr_data_file_path <- read_csv(gdpr_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, gdpr_data_file_path, by = "State")

# Update the "gdpr" column in the original data frame with values from the joined data
data$gdpr <- result$gdpr.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)


#------------loans------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
loans_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/loans_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
loans_data_file_path <- read_csv(loans_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, loans_data_file_path, by = "State")

# Update the "loans" column in the original data frame with values from the joined data
data$loans <- result$loans.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)

#------------university------------------------------------------------------

# Specify the file paths for both Excel files
us_state_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'
university_data_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/university_data.csv'

# Read both Excel files into data frames
data <- read_excel(us_state_file_path)
university_data_file_path <- read_csv(university_data_file_path)

# Perform an inner join based on the "State" column
result <- inner_join(data, university_data_file_path, by = "State")

# Update the "university" column in the original data frame with values from the joined data
data$university <- result$university.y

# View the updated data frame
data

# Specify the file path for the Excel file
output_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Save the updated data frame to the same Excel file
write.xlsx(data, output_file_path, sheetName = 'Sheet1', colNames = TRUE)

print('debug -- End of merging data into excel')
#------End of Merging---------------------------------------------------



print('Conversion -- debug statement-- ')
# Load the required libraries if not already loaded
library(readxl)

# Specify the file path to your Excel file
excel_file_path <- 'C:/Users/sudhi/Downloads/BIS_581/2nd/2ndAssignment/US_state.xlsx'

# Read the Excel file into a data frame
data <- read_excel(excel_file_path)

# Find numeric columns
numeric_columns <- sapply(data, is.numeric)

# Normalize numeric columns to the range [0, 1] using lapply and apply
data[, numeric_columns] <- lapply(data[, numeric_columns], function(col) {
  min_val <- min(col, na.rm = TRUE)
  max_val <- max(col, na.rm = TRUE)
  (col - min_val) / (max_val - min_val)
})
print('Scaling --debug statement--')
# View the normalized data
View(data)

data

print('Scaling complete --debug')

#------------ Plotting -----------------------------

print('Plotting starts here')


# Load the required libraries
library(ggplot2)
library(readxl)

print

data

# 1. Bar plot for 'region' column
ggplot(data, aes(x = region)) +
  geom_bar(fill = "blue") +
  labs(title = "Distribution of States by Region", x = "Region", y = "Count")

# 2. Scatter plot for 'extraversion' vs. 'agreeableness'
ggplot(data, aes(x = extraversion, y = agreeableness)) +
  geom_point(aes(color = region), size = 3, alpha = 0.7) +
  labs(title = "Extraversion vs. Agreeableness by Region", x = "Extraversion", y = "Agreeableness")

# 3. Box plot for 'art' column
ggplot(data, aes(y = art)) +
  geom_boxplot(fill = "green", color = "red") +
  labs(title = "Distribution of Art Scores", y = "Art Score")

# 4. Line plot for 'university' column
ggplot(data, aes(x = State, y = university)) +
  geom_line(aes(group = 1), color = "purple") +
  labs(title = "University Scores by State", x = "State", y = "University Score")

# 5. Histogram for 'gdpr' column
ggplot(data, aes(x = gdpr, fill = region)) +
  geom_histogram(binwidth = 5, alpha = 0.6, position = "identity") +
  labs(title = "Distribution of GDPR Scores", x = "GDPR Score", y = "Frequency")

# Install the plotrix package
install.packages("plotrix")

# Load the plotrix package
library(plotrix)


# 6. Pie chart for 'privacy' column
library(plotrix)
slices <- data$privacy
lbls <- data$State
pie3D(slices, labels = lbls, main = "Privacy Scores by State")

# Load the required libraries
library(ggplot2)
library(dplyr)

# Create a summary of the "region" column
region_summary <- data %>%
  group_by(region) %>%
  summarize(count = n())

# Create a pie chart
ggplot(region_summary, aes(x = "", y = count, fill = region)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  labs(title = "Distribution of States by Region")

# Create a summary of the data by state
state_summary <- data %>%
  group_by(State) %>%
  summarize(count = n())


#data
#print(-debug-)
#print(data)

# Create a pie chart
ggplot(state_summary, aes(x = "", y = count, fill = State)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  labs(title = "Distribution of States")


# Reshape the data for boxplots
data_long <- data %>%
  gather(key = "Variable", value = "Value", -State, -state_code, -region, -psychRegions)

# Create a boxplot for all columns from extraversion to university
ggplot(data_long, aes(x = Variable, y = Value)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  labs(title = "Boxplot for Columns extraversion to university", x = "Variable", y = "Value") +
  # Rotate x-axis labels for better readability
  
  
  ata_long <- data %>%
  gather(key = "Variable", value = "Value", -State, -state_code, -region, -psychRegions)


# Reshape the data for violin and box plots
data_long <- data %>%
  gather(key = "Variable", value = "Value", -State, -state_code, -region, -psychRegions)

# Create a combined violin and box plot for all columns from extraversion to university
ggplot(data_long, aes(x = Variable, y = Value, fill = Variable)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.2, position = position_dodge(width = 0.75), outlier.shape = NA) +
  scale_fill_brewer(palette = "Set3") +  # Choose a color palette
  labs(title = "Combined Violin and Box Plot for Columns extraversion to university", x = "Variable", y = "Value") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate x-axis labels for better readability


# Load the required library
library(ggplot2)

# Assuming 'data' is your data frame with the relevant columns

# Calculate the correlation between 'extraversion' and 'agreeableness'
correlation_value <- cor(data$extraversion, data$agreeableness)

# Create a scatter plot to visualize the correlation
ggplot(data, aes(x = extraversion, y = agreeableness)) +
  geom_point() +
  labs(
    title = "Scatter Plot for Correlation",
    x = "Extraversion",
    y = "Agreeableness",
    subtitle = paste("Correlation:", round(correlation_value, 2))
  )




install.packages("tinytex")
library(tinytex)
