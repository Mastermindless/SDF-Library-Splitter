# SDF-Library-Splitter
SDF Splitter is a simple R script designed to process a large SDF library to single SDF files




The SDF Splitter is a simple yet powerful R script designed to process a large SDF (Structure-Data File) containing multiple chemical compounds, separating it into individual SDF files. Each resulting file is named after its respective compound's catalog ID, facilitating easier management and analysis of chemical libraries.

## Features

- **Ease of Use**: Simple setup and execution process.
- **Flexibility**: Works with any SDF file structure, given minor adjustments.
- **Efficiency**: Processes and splits large SDF files quickly.

## Prerequisites

Before you begin, ensure you have the following installed:
- [R](https://www.r-project.org/)
- [ChemmineR package](https://bioconductor.org/packages/release/bioc/html/ChemmineR.html) within R. Install it by running `BiocManager::install("ChemmineR")` in your R console.

## Installation

No additional installation is required apart from the prerequisites mentioned above. Simply download the `sdf_splitter.R` script from this repository to your local machine.

## Usage

To use the SDF Splitter, follow these steps:

1. Set the working directory to where your large SDF file is located using `setwd("path/to/directory")` within the script.
2. Update the `sdfFilePath` variable with the name of your large SDF file.
3. Update the `outputDir` variable with the desired name of the output directory where individual SDF files will be saved.

### Example

```r
setwd("~/Desktop/Chemical_Libraries")
sdfFilePath <- "large_chemical_library.sdf"
outputDir <- "individual_compounds"
