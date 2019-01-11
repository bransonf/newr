## A simple package for new projects and new computers.

To install this package:
```r
install.packages("devtools")
devtools::install_github("bransonf/newr")
```

And once it is installed, here is how you use this utility:

1. First you create a R project in RStudio, creating or selecting an existing folder.
2. Run this code:

```r
newr::newprj()
```

You will notice that this creates 4 folders by default, as well as a default README describing these directories. Additionally, a template notebook can be found in the `docs/` folder.

I found myself changing computers often, and wasting a lot of time installing packages. An additional function is being created to install the most popular packages in my work.
