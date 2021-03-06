#############################################################################################
#############################################################################################
# Instructions
#############################################################################################
#############################################################################################
# In ATLAS, naviagate to the pathway results you would like to export. Note the URl which will
# resemble the URL below
#
# https://<server>/atlas/#/pathways/10/results/925
#
# In the example above, 925 is the pathways results that you'd like to export.
# Use that value in the script below and designate a folder to export the results.
# The results will consist of 2 JSON files. Zip these and send to the study coordinator

pathwaysResultsId <- 925
outputFolder <- "C:/EHDEN/my_database_name"

if (!file.exists(outputFolder))
  dir.create(outputFolder, recursive = TRUE)


EhdenRaDrugUtilization::exportPathwaysResults(Sys.getenv("baseUrl"),
                                              pathwayResultsId = pathwaysResultsId,
                                              outputFolder=outputFolder)
