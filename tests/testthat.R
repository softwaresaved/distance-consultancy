# Copyright 2014, The University of Edinburgh
# 
# Example test script to run tests written using the "testthat" 
# framework.
# 
# To run outwith R:
#   C:\Program Files\R\R-3.1.0\bin\Rscript.exe testthat.R
# To run within R:
#   source("testthat.R")

library(testthat)
test_file("test_sample.R")
test_file("test_mcds.R")
