# Copyright 2014, The University of Edinburgh
# 
# Example test script showing testthat functions for equality of
# two data files to within a given tolerance.
#
# To run this script also needs:
# - sampledata/ directory:
#   expected.dat 
#   actual.dat 
#   These data files are expected to be equal to within 1e-7.

library(testthat)

test.tolerance <- 1e-7

context("Test Sample")

test_that("Example of testing data files to within a given tolerance", {
  expected_file <- "sample_data/expected.dat"
  actual_file <- "sample_data/actual.dat"
  expected <- read.table(expected_file, stringsAsFactors=FALSE, 
                         colClasses=("numeric"))
  actual <- read.table(actual_file, stringsAsFactors=FALSE, 
                       colClasses=("numeric"))
  expect_equivalent(dim(expected), dim(actual))
  expect_equal(expected, actual, tolerance=test.tolerance)
})
