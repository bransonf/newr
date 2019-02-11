#' Install Packages on a new workstation
#'
#' @export
pkgr <- function(category = c("tidyverse","spatial", "visual", "system", "development", "statistics", "data", "other"), dependencies = TRUE, dev_version = FALSE){
## This additional function to Newr will automatically install a wide variety of popular pacakges for a combination of things in R
## It's primary use is to quickly setup a new computer to accomodate use
## Eventually, packages will be organized and selectable by categorization
## Running just newr::pkgr will install everything and dependencies

packages <- c()

#if(all(c("tidyverse","spatial", "visual", "system", "development", "statistics", "data", "other") %in% category)){
#  ans <- readline("You are about to install all of the packages provided by this function. Proceed? Y/N:")
#  if(ans == "N"){stop()}
#  else(NULL)
#}


## tidyverse
if("tidyverse" %in% category){packages <- append(packages, "tidyverse")}

## spatial
if("spatial" %in% category){
  packages <- append(packages, c("areal","spatstat","spatial","sp","sf","shp2graph","rgl","rgeos","rgdal","RgoogleMaps","raster","prettymapr","leaflet","geosphere", "cartography","lwgeom","mapproj","maps","maptools","mapview","tigris","tmap","spdep","quickmapr","gstat","stplanr","ipfp","mipfp"))
}

## visual
if("visual" %in% category){
  packages <- append(packages, c("colourPicker","viridis","shiny","ggplot2","ggforce","ggthemes","ggridges","ggrepel","RColorBrewer","ggstatsplot","lattice","ggcorrplot","ggExtra","hexbin","hrbrthemes","ggalt","waffle","ggtech","ggfortify","plotly"))
}

## system tools
if("system" %in% category){
    packages <- append(packages, c("xml2","tabulizer","stargazer","openxlsx","Hmisc","foreign","grid","haven","here","magrittr"))
}

## development tools
if("development" %in% category){
  packages <- append(packages, c("devtools","roxygen2","testthat","rlang","lintr"))
}

## statistics
if("statistics" %in% category){
  packages <- append(packages, c("acepack", "afex", "assertthat", "BayesFactor", "bayesplot","car","skimr","sandwich","pwr","heplots", "moments","nortest"))
}

## data packages
if("data" %in% category){

  packages <- append(packages, c("testDriveR","tidycensus","spData","gapminder","engsoccerdata"))
}

## other packages
if("other" %in% category){
  packages <- append(packages, c("abind", "BH", "callr","e1071","measurements","rvest","reprex","purrr","glue","igraph","jsonlite","knitr","markdown","parallel","rmarkdown","magick","reticulate", "fuzzyjoin", "tensorflow", "cronR"))
}

### INSTALLATION
install.packages(pkgs = packages, dependencies = dependencies)

# dev versions of packages I frequently use
if(dev_version == TRUE){
  if(requireNamespace("devtools", quietly = TRUE)){
devtools::install_github("slu-openGIS/gateway")
devtools::install_github("dkahle/ggmap")
}
}

}
