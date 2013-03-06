#! /usr/bin/env Rscript
#  
#  Author  : Devin Shields
#  Date    : 2013-03-05
#  Purpose : demonstrate how to install R packages across a Hadoop cluster even when you can't sudo/are not root
#
#     some code sourced from: http://stackoverflow.com/questions/14896941/install-an-r-package-temporarily-only-for-the-current-session
#

# spec a CRAN mirror
options(repos=structure(c(CRAN="http://cran.cnr.berkeley.edu/")))

# create a temporary package install tool
tmp.install.packages <- function(pack, dependencies=TRUE, ...) {
  path <- tempdir()
    ## Add 'path' to .libPaths, and be sure that it is not
  ## at the first position, otherwise any other package during
  ## this session would be installed into 'path'
  firstpath <- .libPaths()[1]
  .libPaths(c(firstpath, path))
  install.packages(pack, dependencies=dependencies, lib=path, ...)
}

# try to install a temp package
tmp.install.packages("hash")

# load the package
require(hash)

# prove that it worked
example(hash)
