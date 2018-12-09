## This package is used for consistent creation of project directories.

To install this package:
```r
install.packages("devtools")
devtools::install_github("bransonf/newr")
```

And once it is installed, here is how you use this utility:

1. First you create a R project in RStudio, creating or selecting an exisiting folder.
2. Run this code:

```r
newr::newprj()
```

You will notice that this creates 4 folders by default, as well as a default README describing these directories. Additionally, a template notebook can be found in the `docs/` folder.
