#' A Function for creating directories in a consistent manner
#' @export
newprj <- function(){


### Define some naming variables

user <- Sys.getenv("LOGNAME")
projName <- basename(getwd())

### Create directories

dir.create("data")
dir.create("docs")
dir.create("results")
dir.create("source")

### Creating a Notebook by Default (Add proj name paste statement)

file.create(paste0("docs/",projName ,".Rmd"))
fileConn <- file(paste0("docs/",projName ,".Rmd"))
writeLines(c(
  "---",
  paste0("title: ",'"', projName,'"'),
  paste0("author: ", '"', user, '"'),
  paste0("date: '(`r format","(Sys.time(),",' "%B %d, %Y")',"`)'"),
  "output: ",
  "  github_document: default",
  "  html_notebook: default",
  "---",
  "",
  "## Introduction",
  paste0("This is the R Notebook for ", projName,"."),
  "",
  "## Dependencies",
  "The following code chunk loads the packages which this project depends on.",
  "",
  "```{r dependencies, message=FALSE}",
  "library()",
  "```",
  "",
  "## Load Data",
  "The following code chunk loads into the global environment the data used for this project.",
  "",
  "```{r load data}",
  "",
  "```"
), fileConn)
close(fileConn)

### For the README.md default

file.create("README.md")
fileConn <- file("README.md")
writeLines(c(
  paste0("This folder contains the following directories for ","`", projName, "`"),
  "",
  "* `data/` contains the data used in this project.",
  "* `docs/` contains the Rnotebook used for this project.",
  "* `results/` contains the output results of this project.",
  "* `source/` contains the script source code for this project."
), fileConn)
close(fileConn)

### and to clear environment

rm(fileConn, user, projName)

}
