## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- results = "hide", eval = FALSE------------------------------------------
#  #Show the content of sample table template
#  read.csv(system.file("extdata", "Template_sampleTable.csv", package = "dPCP"),
#            stringsAsFactors = FALSE, na.strings = c("NA", ""))
#  
#  #Copy the template to working directory
#  file.copy(system.file("extdata", "Template_sampleTable.csv", package = "dPCP"), getwd())

## ---- results = "hide", eval = FALSE------------------------------------------
#  library(dPCP)
#  
#  #Find path of sample table and location of reference and input files
#  sampleTable <- system.file("extdata", "Template_sampleTable.csv",
#                             package = "dPCP")
#  
#  fileLoc <- system.file("extdata",package = "dPCP")
#  
#  #Lunch dPCP analysis
#  results <- dPCP(sampleTable, system = "bio-rad", file.location = fileLoc,
#                   , eps = 200, minPts = 50, save.template = FALSE, rain = TRUE)

## ---- results = "hide", eval = FALSE------------------------------------------
#  library(dPCP)
#  #Find path of sample table and location of reference and input files
#  sampleTable <- system.file("extdata", "Template_sampleTable.csv",
#                             package = "dPCP")
#  
#  fileLoc <- system.file("extdata",package = "dPCP")
#  
#  #Read sample table file
#  sample.table <- read_sampleTable(sampleTable, system = "bio-rad",
#                                   file.location = fileLoc)
#  
#  #Read reference files
#  ref <- read_reference(sample.table, system = "bio-rad",
#                        file.location = fileLoc)
#  
#  #Read samples files
#  samp <- read_sample(sample.table, system = "bio-rad", file.location = fileLoc)
#  
#  #Reference DBSCAN clustering
#  dbref <- reference_dbscan(ref, sample.table, save.template = FALSE)
#  
#  #Predict position of clusters centroid from reference DBSCAN results
#  cent <- centers_data(samp, sample.table,dbref)
#  
#  #Fuzzy c-means clustering
#  cmclus <- cmeans_clus(cent)
#  
#  #Rain classification.
#  rainclus <- rain_reclus(cmclus)
#  
#  #Quantification
#  quantcm <- target_quant(cmclus, sample.table)
#  quant <- target_quant(rainclus, sample.table)
#  
#  #Replicates pooling
#  rep.quant <- replicates_quant(quant, sample.table)

