# Copyright 2014, The University of Edinburgh
# 
# Example test script showing testthat functions for validating MCDS
# using a set of input files and known-correct output files for these
# input files.
#
# It provides examples of:
# - Using R's system2 command to run MCDS.exe from the command-line
# - Testing the return code
# - Testing for existence of output files
# - Testing that an output file contains the same data as a
#   known-correct output file, for the same inputs, to within a given
#   tolerance. 
# - Naively testing for file equality, via use of system2 to invoke
#   DOS fc command.
#
# To run this script needs:
# - MCDS.exe in the current directory or available in %PATH%.
# - data/ directory: 
#   test_command.txt - command file
#   test_input.txt - input data file
#   expected/ directory:
#     test_log.txt - log file
#     test_output.txt - output file
#     test_plot.txt - plots file
#     test_stats.txt - stats file
#     These are the known-correct output files for the input files.

library(testthat)

test.tolerance <- 1e-7

context("Test MCDS")

test_that("Test for existence of output files", {
  result <- suppressWarnings(system2("mcds.exe", 
    args="0 data\\test_command.txt", 
    stdout="test_stdout.tmp", 
    stderr="test_stderr.tmp"))
  expect_equivalent(2, result) # Expect 2 - analysis ran with warnings
  expect_true(file.exists("test_log.tmp"), info="log file exists")
  expect_true(file.exists("test_output.tmp"), info="output file exists")
  expect_true(file.exists("test_plot.tmp"), info="plot file exists")
  expect_true(file.exists("test_stats.tmp"), info="stats file exists")
})

test_that("Test content of stats file", {
  result <- suppressWarnings(system2("mcds.exe", 
    args="0 data\\test_command.txt", 
    stdout="test_stdout.tmp", 
    stderr="test_stderr.tmp"))
  expect_equivalent(2, result) # Expect 2 - analysis ran with warnings
  expect_true(file.exists("test_stats.tmp"), info="stats file exists")
  expected <- read.table("data/expected/stats.tmp", stringsAsFactors=FALSE, 
                         colClasses=("numeric"))
  actual <- read.table("test_stats.tmp", stringsAsFactors=FALSE, 
                       colClasses=("numeric"))
  expect_equivalent(dim(expected), dim(actual))
  expect_equal(expected, actual, tolerance=test.tolerance)
})

test_that("Test content of output and plot file, naively using DOS fc", {
  result <- suppressWarnings(system2("mcds.exe", 
    args="0 data\\test_command.txt", 
    stdout="test_stdout.tmp", 
    stderr="test_stderr.tmp"))
  expect_equivalent(2, result) # Expect 2 - analysis ran with warnings
  expect_true(file.exists("test_output.tmp"))
  expect_true(file.exists("test_plot.tmp"))

  result <- suppressWarnings(system2("fc", 
    args="data\\expected\\plot.tmp test_plot.tmp",
    stdout="test_stdout.tmp",
    stderr="test_stderr.tmp"))
  expect_equivalent(0, result, info="plot.tmp equality check using fc")
  result <- suppressWarnings(system2("fc", 
    args="data\\expected\\stats.tmp test_stats.tmp",
    stdout="test_stdout.tmp",
    stderr="test_stderr.tmp"))
  expect_equivalent(0, result, info="stats.tmp equality check using fc")
})

# Clean up.

suppressWarnings(file.remove("test_output.tmp"))
suppressWarnings(file.remove("test_log.tmp"))
suppressWarnings(file.remove("test_stats.tmp"))
suppressWarnings(file.remove("test_plot.tmp"))
suppressWarnings(file.remove("test_stdout.tmp"))
suppressWarnings(file.remove("test_stderr.tmp"))
