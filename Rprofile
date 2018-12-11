# -* karetsu *- #
# -* mode: R *- #

# Set CRAN mirror and library path
local(
  {
    # Set my CRAN preference
    r <- getOption("repos")
    r["CRAN"] <- c(
      "https://www.stats.bris.ac.uk/R/"
    )
    options(repos=r)

    # Where are the libraries installed?
    .libPaths("/usr/local/lib/R")
  }
)


# Personal preferences
options(stringsAsFactors=FALSE)	    # why is this anything else by default?
options(max.print=100)              # stemming print
options(scipen=10)		    # preventing scientific numbers
options(editor="emacs")             # ronseal


# What I think should be the default behaviour of q()
q <- function (save="no", ...) {
  quit(save=save, ...)
}


# Completion for packages in library()!!
utils::rc.settings(ipck=TRUE)


# .First and .Last, I don't currently do anything
### I used to keep a log of sessions but don't need to time keep now :)
# .First <- function(){}
# .Last <- function(){}


# Namespace for hiding things so they don't clutter my workspace
.env <- new.env()

.env$unrowname <- function(x) {
  rownames(x) <- NULL
  x
}


.env$unfactor <- function(df){
  id <- sapply(df, is.factor)
  df[id] <- lapply(df[id], as.character)
  df
}

attach(.env)



message("\n -* Let's rock *- \n")
