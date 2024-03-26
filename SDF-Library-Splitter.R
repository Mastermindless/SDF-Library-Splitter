# Splitting Large SDF File into Individual SDF Files
# This script reads a large SDF file containing multiple chemical compounds and separates it into individual SDF files, each named after the compound's catalog ID.
# Author: [Your Name]
# Date: [Date of Release]

# Prerequisites:
# - R environment with ChemmineR package installed. Install ChemmineR using: BiocManager::install("ChemmineR")

# How to Use:
# 1. Set the working directory to the location of your large SDF file using setwd("path/to/directory").
# 2. Update 'sdfFilePath' with the name of your large SDF file.
# 3. Update 'outputDir' with the name of the directory where you want the individual SDF files saved.

# BiocManager::install("ChemmineR")
library(ChemmineR)

# Set the working directory to where the large SDF file is located
# Example: setwd("~/Desktop/Docking_VINA/Enamine_Library/Enamine_GPCR_Library_plated")
setwd("path/to/your/sdf/file/directory")

# Path to the large SDF file
sdfFilePath <- "your_large_sdf_file.sdf"

# Name of the output directory for the individual SDF files
outputDir <- "name_of_your_output_directory"

# Create the output directory if it doesn't exist
if (!dir.exists(outputDir)) {
  dir.create(outputDir, recursive = TRUE)
}

# Read the SDF file
sdf <- read.SDFset(sdfFilePath)

# Iterate through each compound in the SDF set
for (i in seq_along(sdf@SDF)) {
  # Extract the current compound
  compound <- sdf@SDF[[i]]
  
  # Extract the Catalog ID from the compound's data block
  catalogID <- sdf@SDF[[i]]@datablock[["Catalog ID"]]
  
  # Define the output file path using the Catalog ID
  outputPath <- file.path(outputDir, paste0(catalogID, ".sdf"))
  
  # Write the compound to an SDF file named after the Catalog ID
  write.SDF(compound, outputPath)
}

cat("Done separating the SDF file.\n")
