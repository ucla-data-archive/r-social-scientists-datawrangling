#########################################
##### Data Wrangling with dplyr and tidyr
#########################################

# Questions
# How can I select specific rows and/or columns from a dataframe?
# How can I combine multiple commands into a single command?
# How can I create new columns or remove existing columns from a dataframe?
# How can I reformat a dataframe to meet my needs?


#########################################
##### from previous lesson
#########################################

# 1) set up folders
dir.create("data")
dir.create("data_output")
dir.create("fig_output")

# 2) download the data
download.file("https://ndownloader.figshare.com/files/11492171",
              "data/SAFI_clean.csv", mode = "wb")

# 3) install packages
install.packages("tidyverse")
install.packages("here")


#########################################
##### What is an R Package
#########################################

# In the previous lesson we touched on R packages, how to install and 
# load them. Packages extend the functionality of R.

# Today we are going to be working with dplyr and tidyr:
# tidyverse:  The tidyverse is an opinionated collection of R packages 
#    designed for data science.<https://www.tidyverse.org/>
# The tidverse collection INCLUDES both dplyr and tidyr

# dplyr: provides easy tools for most common data wrangling taskes.  
#    it is built to work with dataframes.

# tidyr: addresses the common problem of wanting to reshape your data 
#    for plotting and use by other R package

# here: The goal of the here package is to enable easy file referencing 
#    in project-oriented workflows. In contrast to using setwd(), 
#    which is fragile and dependent on the way you organize your files, 
#    here uses the top-level directory of a project to easily build paths 
#    to files. <https://here.r-lib.org/>


# load the tidyverse
library(tidyverse)
library(here)

minterviews <- read_csv(here("data", "SAFI_clean.csv"), na = "NULL")



#########################################
##### Inspect the data
########################################## inspect the data

# common dplyr functions we will be using:
#     select(): subset columns
#     filter(): subset rows on conditions
#     mutate(): create new columns by using information from other columns
#     arrange(): sort results
#     count(): count discrete values
interviews

# preview the data
# view(interviews)