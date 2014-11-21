
Distance Developer's Guide 
==========================

This repository contains the pages for the Distance Developer's Guide web site. It is written in HTML and [MarkDown](http://daringfireball.net/projects/markdown/syntax), uses [Jekyll](http://jekyllrb.com/) templates and is rendered via [GitHub pages](https://pages.github.com/).

To view the web site, visit http://softwaresaved.github.io/distance-consultancy.

The following sections describe how to edit and preview the web site.

Install Git for Windows
-----------------------

* Download from http://msysgit.github.io/
* Double-click exe (e.g. Git-1.9.4-preview20140929.exe) to install

Fork and clone this repository
------------------------------

* [Sign in](http://github.com/login) to GitHub
* [Fork](https://github.com/softwaresaved/distance-consultancy/fork) this repository
* Start Git Bash
* Clone your fork onto your computer:

<p/>

    git clone http://USERNAME@github.com/USERNAME/distance-consultancy.git

* Fetch the gh-pages branch, the branch which GitHub pages expects the web pages to be in, and check it out:

<p/>

    cd distance-consultancy
    git fetch gh-pages
    git origin fetch gh-pages
    git fetch origin gh-pages
    git checkout gh-pages

Set up Jekyll
-------------

It is useful to set up Jekyll on your computer so you can preview your changes before commiting and pushing them.

* Download and install Ruby:
  - Download from http://rubyinstaller.org/
  - The download page specifies the recommended version (currently Ruby 1.9.3-p550)
  - Double-click exe (e.g. rubyinstaller-1.9.3-p550) to install
* Install Ruby bundler gem (gems are Ruby modules or libraries):
  - Select Start => All Programs => Ruby 1.9.3-p550 => Start Command Prompt With Ruby
  - Run:

    <p/>

        gem install bundler

* Download and install Ruby Development Kit
  - Download from http://rubyinstaller.org/downloads/
  - The download page specifies the recommended version (currently tdm-32-4.5.2 for Ruby 1.8.6 to 1.9.3)
  - Double-click exe (e.g. DevKit-tdm-32-4.5.2-20111229-1559-sfx.exe) to unpack the self-extracting archive
  - Select Start => All Programs => Ruby 1.9.3-p550 => Start Command Prompt With Ruby  
  - Change into the Ruby Development Kit folder
  - Run:

    <p/>

        ruby dk.rb init
        ruby dk.rb review
        ruby dk.rb install

* Install Ruby gh-pages gem:
  - Select Start => All Programs => Ruby 1.9.3-p550 => Start Command Prompt With Ruby  
  - Change into the folder with your clone of this repository
  - Run:

    <p/>
    
        bundle install

Edit pages
----------

* Edit pages using your favourite editor
* Preview how the pages will look on the web site, within the Ruby command prompt, 
  - Select Start => All Programs => Ruby 1.9.3-p550 => Start Command Prompt With Ruby  
  - Change into the folder with your clone of this repository
  - Run:

    <p/>

        serve.bat

  - Browse to http://localhost:4000/
* When happy, commit your changes and push

<p/>

    git commit -m "... ... ..."
    git push origin gh-pages

* Create a pull request from your fork on GitHub to this repository

Hints and tips
--------------

* Pages can be written in HTML or MarkDown.
* MarkDown pages should have a header of the form:

<p/>

    ---
    layout: page
    title: TITLE
    root: PATH_TO_ROOT_FOLDER
    ---

<p/>

    ---
    layout: page
    title: Example Page
    root: .
    ---

* Relative links between MarkDown pages are allowed but use a .html suffix e.g.

<p/>

    [How to build R components](./developer/BuildR.html)

* Site-wide configuration properties are in [_config.yml](./config.yml).
* A configuration property, NAME, can be referenced in a page using:

<p/>

    {{ site.NAME }}

<p/>

    For support, contact {{ site.email }}.

* Project-specific properties can be defined.
* [_config.yml](./config.yml) baseurl holds the sub-path of the web site. This should match the name of the GitHub project hosting the web site e.g. distance-consultancy.
