Distance for Windows, MCDS and Fortran testing
==============================================

A simple end-to-end harness can provide a degree of security that one is not introducing bugs during development.

An end-to-end test harness for the Fortran-based MCDS executable can be written using R. MCDS takes in a set of input files and produces a set of output files. These output files can be validated against a set of known-correct output files using R, as follows (for example):

    > expected=read.table("expected.dat",stringsAsFactors=FALSE,colClasses=("numeric"))
    > actual=read.table("actual.dat",stringsAsFactors=FALSE,colClasses=("numeric"))
    > dim(expected)
    [1] 128   4
    > dim(actual)
    [1] 128   4
    > all.equal(expected,actual,tolerance=1e-7)
    [1] TRUE  
    > all.equal(expected,actual,tolerance=1e-8)
    [1] "Component "V4": Mean relative difference: 1.338014e-08"

Tolerances are used to avoid numerical precision issues.

Example test scripts
--------------------

This directory provides example test scripts showing R [testthat](http://cran.r-project.org/web/packages/testthat/index.html) functions for validating MCDS using a set of input files and known-correct output files for these input files. It provides examples of:

* Using R's system2 command to run MCDS.exe from the command-line
* Testing the return code
* Testing for existence of output files
* Testing that an output file contains the same data as a known-correct output file, for the same inputs, to within a given tolerance.
* Naively testing for file equality, via use of system2 to invoke DOS fc command.

To use these, a developer can:

* Generate a set of expected output files for a range of MCDS command and input files and save these.
* Extend the example tests to run MCDS on this range of input files and compare the actual output files to the expected output files.
* Every time the developer changes MCDS they can rerun the tests.

Limitations
-----------

The plot and output files of MCDS are problematic since their data is far more complex than the tabular data in the stats file. The example tests for equality of plot and output files, which use the DOS fc command, are naive in that they cannot account for rounding errors. If this was an issue then a more complex set of tests would need to be developed, tests which would be able to parse the plot and output files and extract any floating point data from these. This would be beyond the realms of R but could be done in Python or Fortran. Likewise the simple example already provided could be implemented in Python or, with more effort, in Fortran. 

Fortran unit tests
------------------

Longer term one would want to evolve a set of unit tests for the Fortran code. There are a number of Fortran unit test frameworks available. See, for example [A look at Fortran unit test frameworks](http://www.software.ac.uk/blog/2014-07-22-look-fortran-unit-test-frameworks).
