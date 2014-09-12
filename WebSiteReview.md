Web Site Review
===============

Introduction
------------

The [Distance project](http://distancesampling.org) provides software, Distance, for the design and analysis of distance sampling surveys of wildlife populations. Distance is used by biologists, students, and decision makers to better understand animal populations without the need for these users to have degrees in statistics or computer science. 

Distance consists of a Visual Basic interface on top of analysis engines written in FORTRAN, the statistical programming language R, and ESRI MapObjects. These all feed from a shared Microsoft Access database. Distance is distributed as both a Windows-based program and a suite of packages for R. The Windows version provides a GUI.

This report presents a review of the Distance web site, http://distancesampling.org, undertaken as a pre-requisite to a review of Distance from a user perspective. The Distance web site will typically be a user's first experience with Distance as well as resource used for information, help and support. It also covers the current Distance release notes and user guide as there is overlap in the information provided by these resources.

The review was undertaken on 08-12/09/14. Please contact the reviewer at m.jackson@software.ac.uk if you have any queries.

Section headings are task-oriented so they can serve as a check-list of recommendations. 

----------------------------------------------------------------------

High priority recommendations
=============================

Redesign web site front page
----------------------------

The [front page](http://distancesampling.org/) of the web site shows, on the left hand side:

* 'Distance sampling' button.
* 'Download Distance for Windows' button.
* 'Distance R packages' button.
* Link to GoogleGroup [distance-sampling](https://groups.google.com/forum/#!forum/distance-sampling) and the most recent four posts.

And, on the right hand side:

* A summary of what the Distance project.
* Link to [What is distance sampling?](http://distancesampling.org/whatisds.html).
* Link to [Distance training workshops](http://creem2.st-andrews.ac.uk/workshops/) though the link is 'this link' within 'Distance sampling training workshops are held in St Andrews in August. Consult this link for news on the next offering' and is not as prominent as it should be.
* Information and on link to [Distance for Windows](http://distancesampling.org/Distance/distanceusers.html)
* Information on and link to [Distance R packages](http://distancesampling.org/R/index.html)
* User statistics, 'downloaded by over 30,000 users from around 114 countries' and a link to [Who Uses Distance?](http://distancesampling.org/Distance/distanceusers.html).
* A collection of links under a heading 'Other pages on this site':
 - [Who writes Distance?](http://distancesampling.org/authors.html)
 - [Join the distance sampling mailing list](http://distancesampling.org/distancelist.html)
 - [Extra useful downloads and information](http://distancesampling.org/distanceextras.html)
 -  [Other software related to Distance](http://distancesampling.org/othersoftware.html)
 - [Distance sampling bibliography](http://distancesampling.org/dbib.html)
 - [History of the project](http://distancesampling.org/distancehistory.html)
 - [Who sponsors Distance?](http://distancesampling.org/distancesponsors.html)

Consider these changes to the left-hand side:

* Remove the 'Distance sampling button':
 - This takes the user to the [What is distance sampling?](http://distancesampling.org/whatisds.html) page. Users may expect buttons like this to invoke some action like a download or take them directly to a download page, rather than just acting as a standard hyper-link.
* Provide a 'Download Distance 6.2' button:
 - The 'Download Distance for Windows' button takes the user to the [Distance for Windows](http://distancesampling.org/Distance/index.html) page. The user then has to go from here to the [Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) page for the latest release. 
 - It would be useful to provide a button that takes the user directly to the download page for the latest release.
* Highlight the 'Download Distance 6.2' button:
 - SourceForge projects (e.g. see [TPLS](http://sourceforge.net/projects/tpls/)) make the download button prominent, in green, to draw the user's attention to it.

Consider structuring the right-hand side into the following sections:

* What is Distance - project background in a few sentences including:
 - 'The Distance project provides software for the design and analysis of distance sampling surveys of wildlife populations'.
 - Authors e.g. 'Distance has been developed by a team of statisticians, ecologists and computer scientists for institutions around the world' and link to [Who writes Distance?](http://distancesampling.org/authors.html)
 - History e.g. 'Distance has been under development since 1997' and link to [History of the project](http://distancesampling.org/distancehistory.html).
 - Sponsors e.g. 'Distance has been, and continues to be, supported by a number of sponsors' and link to [Who sponsors Distance?](http://distancesampling.org/distancesponsors.html)
* Who uses Distance - summary of range and diversity:
 - Users and countries e.g. 'Distance has been downloaded by over 30,000 users from around 114 countries' and link to [Who Uses Distance?](http://distancesampling.org/Distance/distanceusers.html)
 - Bibliography e.g. 'Distance and its underlying distance sampling methods have been cited in over 1270 publications' and link to [Distance Sampling References](http://distancesampling.org/dbib.html).
 - Diversity of applications areas e.g. 'Asides from surveys of wildlife populations, Distance has been used for studies of fishing vessels and gear, dead trees, fungi, fossils, hunters, forest fires, and shooting stars'.
* Download Distance:
 - Distance for Windows - brief summary and link to [Distance for Windows](http://distancesampling.org/Distance/distanceusers.html).
 - Distance R packages - brief summary and link to [Distance R packages](http://distancesampling.org/R/index.html).
* Get in Touch:
 - Invitation to get in touch about distance sampling, project, software, usage, bugs, feature requests.
 - Link to proposed [Get in Touch](./GetInTouch.md) page (see below).

Together these changes provide key information about the project and software in one page, allowing a user to readily see where to find answers to questions including:

* What is the Distance project? Who is involved? Who funds it?
* What does Distance do? What can it be used for?
* Who uses it?
* How do I get hold of it?
* How do I get in touch?

Create a single a Get in Touch page
-----------------------------------

A number of pages invite users to get in touch, whether it be to request features, report bugs or share experiences. Ways in which users are asked to get in touch include:

Contact the team:

* [Distance history](http://distancesampling.org/distancehistory.html): 'If you have any comments or suggestions about the program, we'd love to hear from you!'.
* [Download Distance 5.0](http://distancesampling.org/Distance/old-versions/distance50download.html): 'Please contact us if you are aware of a problem with the software that is not listed here'.
* [Known problems and workarounds Distance 3.5 Release 6](http://distancesampling.org/Distance/old-versions/distanceknownproblems.html): 'Please contact program authors', 'Please email your project file to the program authors'.
* [Resolved problems and new features Distance 4.1 Release 2](http://distancesampling.org/Distance/old-versions/d41resolvedproblems.html): 'contact program authors', 'Please contact the program authors'.

Contact the team, with a link to [Distance development team](http://distancesampling.org/authors.html):

* [Distance Extras](http://distancesampling.org/distanceextras.html): 'Once you have exhausted these possibilities, please contact the program authors', 'If you have written a utility program that you think others would find useful in their dealings with Distance we would be happy to publish it here. Please contact us'.
* [Download Distance 3.5](http://distancesampling.org/Distance/old-versions/distance35download.html): 'If you find a problem with Distance 3.5 that is not listed here, please contact us'.
* [Download Distance 2.2](http://distancesampling.org/Distance/old-versions/distance22download.html): 'If you find it impossible to obtain Distance 2.2 over the internet, please contact us'.

Contact specific team members:

* [Distance sampling email list](http://distancesampling.org/distancelist.html): 'If you have any issues joining the group, contact David Miller (dlm22 at st-andrews.ac.uk)'.
* [Distance Sampling References](http://distancesampling.org/dbib.html) 'Please contact Tiago Marques (tiago.marques), Eric Rexstad (eric.rexstad) or Dave Miller (dlm22) to add, remove, or correct entries (all addresses are at st-andrews.ac.uk)'.

E-mail distance@mcs.st-and.ac.uk:

* [Sponsors of Distance](http://distancesampling.org/distancesponsors.html): 'If you are interested in helping to support distance, or funding development of specific features, please contact us at distance@mcs.st-and.ac.uk'.
* [Contact Us](http://distancesampling.org/contact.html): 'Please e-mail us at distance@mcs.st-and.ac.uk', 'Once you have exhausted these possibilities, please send a message detailing the problem to the e-mail address distance@mcs.st-and.ac.uk'.
* [Distance 6.2 Release 1 Release Notes - 22 April 2014](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf): '(5) contact the program authors by email: distance@mcs.st-and.ac.uk'.

E-mail jiscmail@jiscmail.ac.uk:

* [Distance 6.2 Release 1 Release Notes - 22 April 2014](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf): 'To join this distance-sampling list, send an email to jiscmail@jiscmail.ac.uk ...'
* This list was deprecated in June 2014.

E-mail distance-sampling@googlegroups.com:

* [Distance development team](http://distancesampling.org/authors.html): via [Mailing list](http://distancesampling.org/distancelist.html).

Use [Bugzilla](http://www.ruwpa.st-and.ac.uk/distance/bugzilla/):

* [Distance Extras](http://distancesampling.org/distanceextras.html) via [Reporting a bug in Distance](http://distancesampling.org/Distance/bugreport.html).

The information is contradictory. For example, 'Distance development team' says that 'When asking questions, please direct them towards the Distance mailing list or the support e-mail address, rather than individual team members.' yet 'Distance history', 'Distance sampling email list', 'Distance Sampling References', and 'Distance Extras' all recommend contacting the authors.

Users may have to navigate through a number of pages before getting to a concrete contact. For example, from 'Distance Extras' to 'Distance development team' to either 'Mailing list' then to distance-sampling@googlegroups.com (which they then have to register to use) or to 'Contact Us' to distance@mcs.st-and.ac.uk.

Users may adopt the path of least resistance and e-mail the first concrete e-mail address they encounter, whether that be distance@mcs.st-and.ac.uk or that of a specific team member.

This distributed information also creates a maintenance overhead. For example, if the project e-mail address were to change it would require updating all the pages where it is mentioned.

Provide a single Get in Touch page to resolve these issues. This can merge together the content from 'Contact us' and 'Distance sampling email list' and be linked from all these other pages. The page can summarise what resources should be used for what sort of contact. See [Get in Touch](./GetInTouch.md) for an example.

Provide a link to this page from all the other pages in the web site so the user can always immediately find out contact information for any questions that arise within any part of the web site.

'Help and support' is discussed below.

These issues relate to how user interactions are managed which will revisited, in more depth, at a later date, when reviewing  project governance.

Create a single Help and Support page
-------------------------------------

To get help, users will use one of the avenues in the previous section. There are also a number of other sources of information they can consult:

* [Distance Extras](http://distancesampling.org/distanceextras.html): 
 - 'Running Distance on other operating systems' - Linux and Mac.
 - 'Cross-platform text issues'.
* Release-specific pages:
 - [Installation of R for use with Distance 6.2](http://distancesampling.org/Distance/old-versions/d62-r-install-details.html), how to resolve 'R installed correctly error' and 'Directory not writeable error'.
 - [Current restrictions, known problems and workarounds Distance 6.0 Release 2](http://distancesampling.org/Distance/old-versions/d60knownproblems.html).
 - [Current restrictions, known problems and workarounds Distance 5.0 Release 2](http://distancesampling.org/Distance/old-versions/d50knownproblems.html).
 - [Distance 4.1 Release 2 - Current restrictions, known problems and workarounds](http://distancesampling.org/Distance/old-versions/d41knownproblems.html).
 - [Known problems and workarounds Distance 3.5 Release 6](http://distancesampling.org/Distance/old-versions/distanceknownproblems.html).
* [distance-sampling](http://www.jiscmail.ac.uk/lists/distance-sampling.html) JISCMail archive, for messages up to June 2014. Linked from [Mailing list](http://distancesampling.org/distancelist.html).
* [distance-sampling](https://groups.google.com/forum/#!forum/distance-sampling) GoogleGroup archive.
* [Distance 6.2 Release 1 Release Notes - 22 April 2014](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf):
 - 'Running Distance under other operating systems'.
 - 'Running Distance in extended character systems'.
 - 'Current restrictions for Distance 6.2 Release 1' lists some workarounds for some problems.
* [Bugzilla](http://www.ruwpa.st-and.ac.uk/distance/bugzilla/): open and closed bugs.

This information can be difficult to find as it is spread across a number of pages and users may miss information depending upon how much time they spend exploring the web site.

How users should help themselves is described on [Reporting a bug in Distance](http://distancesampling.org/Distance/bugreport.html):

> If you are having problems with Distance, please first check the manual and readme file (ReadMe.rtf) carefully, then search the Bugzilla database of known problems. Note, when searching for bugs make sure to search both open and closed bugs, this is easiest done in the simple search engine by changing the status to 'All'. If you have an older version of Distance you may wish to check the bug has not yet been resolved in the latest version. Finally, you may want to check the archives of the distance-sampling e-mail list. Once you have exhausted these possibilities, please submit new bugs to the Bugzilla database.

Such information - a series of steps to follow - is better presented as a bulleted list.

It would be useful to provide a single page which describes how users can help themselves, and report bugs, combined with the resources available to them. See [Help and Support](./HelpAndSupport.md) for an example.

You could also provide a link to Eric Steven Raymond and Rick Moen's guide on  [How to ask questions the smart way](http://www.catb.org/esr/faqs/smart-questions.html) but this endorses RTFM which I'm not keen on.

Provide a link to this page from all the other pages in the web site so the user can always access help and support information from any part of the web site.

Refactor Distance software pages
--------------------------------

Information about Distance releases is spread across a number of pages and documents:

* [Distance for Windows](http://distancesampling.org/Distance/index.html):
 - A table of the releases plus links to pages for each specific release.
* Release-specific pages:
 - Link to release notes (.rtf documents).
 - Link to a Known Problems and Workarounds page.
 - Link to a Resolved Problems and New Features page.
* Release-specific release notes:
 - New features, resolved issues and known problems.
* [New in Distance](http://distancesampling.org/Distance/newindistance.html):
 - Lists of new features in each Distance release from 4.0 to 6.2.
* [Distance Extras](http://distancesampling.org/distanceextras.html)
 - Information on how to run Distance on Linux and Mac using emulators.

It can be difficult to navigate these to find out all the information about a specific release. There is also the risk that duplicated information - across the web site, user guide and release notes - becomes out-of-synch.

In addition, [Distance Extras](http://distancesampling.org/distanceextras.html) fulfils other roles, offering information on help and support and links to GIS-related background information.

To refactor this into a more maintainable and accessible form, rename [Distance for Windows](http://distancesampling.org/Distance/index.html) to 'Distance' and structure it as follows:

* Distance for Windows section with a downloads table:
 - Columns: Version, Operating System, Download size, Installed program size, Minimum hardware requirements, Notes
 - Rows: one for each Distance release in reverse chronological order.
 - Move the text from 'Download latest version' and 'Download previous versions' headings into the Notes column to information on each version is in one place.
* Distance for Linux section with an emulators table:
 - Columns: Emulator, Notes, Distance Experiences
 - Rows: one for each of the main emulators: VMWare, win4lin, Parallels, VirtualBox.
 - Each row provides notes on the emulator and also any information on creating virtual machines with Distance using that emulator.
* Distance for Mac section:
 - Analogous Distance for Linux.

Refactor version-specific Download pages to have a common structure:

* Distance version and release date.
* New features section and link to screen shots.
* Download section:
 - Distance on CD.
 - Use Agreement.
 - Download.
* Release notes section:
 - Link to release notes document.
 - Resolved problems section.
 - Known issues and workarounds section.

For older releases it does not matter if some sections are empty.

Refactor related software pages
-------------------------------

Information about related software is spread across a number of pages:

* [Distance Extras](http://distancesampling.org/distanceextras.html)
 - List and description of extra packages and download links.
* [Other software](http://distancesampling.org/othersoftware.html):
 - Software derived from Distance components e.g. MGET, WebSim.
 - Software similar to Distance e.g. E-SURGE, POSDEM.

To refactor this into a more maintainable and accessible form, combine it into a single page with three sections:

* Distance extras, a table specifying:
 - Name, Description, Download Link, Download Size, Date, Versions of Distance tested against.
* Software using Distance, a table specifying:
 - Name, Description, Web page, Date, Versions of Distance used.
* Software similar to Distance, a table specifying:
 Name, Description, Web page, Date.

This also differentiates software that uses Distance from that which is similar to Distance. As for the publications list, software that uses Distance provides evidence of the research that Distance helps enable.

Consider restructuring Known Problems and Workarounds
-----------------------------------------------------

As already mentioned in 'Create a single Help and Support page' above, each Distance release, except for 6.2, has its own 'Known Problems and Workarounds' page. Some of these may be applicable to subsequent releases. It can be time consuming for a user to have to search through all these.

An alternative way of structuring this information might be as a single page of Known Problems and Workarounds. The information could be held in a table, with columns:

* Single line summary of problem.
* Symptoms.
* Causes (if known).
* Workarounds (if any).
* Distance versions 
 - Versions in which this problem arises.
 - Versions for which this problem has been resolved (if any).

Rows could be grouped into categories if necessary e.g. Installation, R, Linux, Mac etc.

Fix broken or problematic links
-------------------------------

Broken links were spotted on the following pages:

* [Contact us](http://distancesampling.org/contact.html):
 - 'latest news about Distance', http://distancesampling.org/distancedownload.html
 - 'archives', http://www.mailbase.ac.uk/lists/distance-sampling/archive.html should be http://www.jiscmail.ac.uk/lists/distance-sampling.html
* [Sponsors of Distance](http://distancesampling.org/distancesponsors.html):
 - 'Science and Exploration Program', http://www.savingwildplaces.com/
 - 'US Office of Naval Research, Marine Life Sciences program', http://www.onr.navy.mil/sci_tech/32/322/marine_life_sciences/marine_life_sciences.asp
 - 'GeoMarine Inc', http://geo-marine.com/
* [Citing Distance](http://distancesampling.org/citation.html):
 - University of St Andrews digital research repository 'Direct link to PDF', http://research-repository.st-andrews.ac.uk/bitstream/10023/817/1/ThomasJAE2009.pdf should be http://research-repository.st-andrews.ac.uk/bitstream/10023/817/5/ThomasJAE2010.pdf
* [Reporting a bug in Distance](http://distancesampling.org/Distance/bugreport.html):
 - 'e-mail list', http://distancesampling.org/Distance/distancelist.html
* [Other software](http://distancesampling.org/othersoftware.html):
 - 'WebSim', http://distancesampling.org/websim/websim.html
* [Distance Sampling reference material](http://www.ruwpa.st-and.ac.uk/distance.book/):
 - 'Significance web site', http://onlinelibrary.wiley.com/journal/10.1002/(ISSN)1740-9713
 - 'Distance sampling training workshops', http://www.ruwpa.st-and.ac.uk/workshops.html should be http://creem2.st-andrews.ac.uk/workshops/

Problematic links were spotted on the following pages:

* [Other software](http://distancesampling.org/othersoftware.html):
 - 'E-SURGE', ftp://ftp.cefe.cnrs.fr/biom/Soft-CR/Last_Update is password-protected.
 - 'POSDEM', https://smallbusiness.yahoo.com/geocities shows a message that 'Geocities closed in 2009' and a Rick Astley video!
* [Distance Sampling Software Order Form](http://distancesampling.org/order.htm):
 - URL is displayed as text 'http://www.ruwpa.st-and.ac.uk/distance/' and redirects to http://distancesampling.org, so hide the URL (e.g. just use 'The Distance project').

Don't claim Distance is 'easy to use'
-------------------------------------

[Distance](http://distancesampling.org/) says that:

> Distance for Windows is an industry standard (free and easy to use) ...

[Distance for Windows](http://distancesampling.org/Distance/index.html) says tat:

> It is a Windows program, featuring a graphical user interface that is easy to learn and use.'

Avoid comments such as 'intuitive', 'user friendly', 'easy to use', 'simple' or 'obviously'. These comments are highly subjective and the reader may not agree with them! The only people qualified to make this claim are the users themselves and each, depending on their experience will have their own opinion as to whether this claim holds! It's better to have a user say this and quote them. On which note...

Add testimonials from users
---------------------------

Adding testimonials to users to both the front page and [Who Uses Distance?](http://distancesampling.org/Distance/distanceusers.html) can help demonstrate how Distance has benefited users.

You may want to consider checking your JISCMail and GoogleGroup archives to see if users have made any complimentary comments. In addition, you may want to ask long-standing users if they would be willing to say how Distance has helped their research.

The Software Sustainability Institute can help with a community survey that can gather this sort of information.

Move Distance workshop 'how to prepare your data' to the web site
-----------------------------------------------------------------

Distance workshops are listed on the CREEM [Workshops](http://creem2.st-andrews.ac.uk/workshops/) page. [Information for Registrants](http://creem2.st-andrews.ac.uk/?page_id=224&preview=true.html) links to [how to prepare your data](http://creem2.st-andrews.ac.uk/?page_id=226&preview=true). This should be moved to the Distance web site as it would be of interest, and use, to Distance users. As would the [narrated video](http://screencast-o-matic.com/watch/cljnDBKAB) linked from this page.

Add a search button
-------------------

Given the number of pages in the web site, a search button would be very useful.

----------------------------------------------------------------------

Low priority recommendations
============================

Add diagrams of line and point surveying
----------------------------------------

[What is distance sampling?](http://distancesampling.org/whatisds.html) describes the concepts behind Distance, particularly 'In the case of lines the perpendicular distances to detected animals are recorded, while in the case of points the radial distances from the point to detected animals are recorded.'

A diagram highlighting each of these approaches would be useful.

Change download URL for latest release
--------------------------------------

The download page for the current version of Distance, 6.2 is:

http://distancesampling.org/Distance/old-versions/distance62download.html

It's a little odd that the latest version is in a directory, old-versions. A user might think there is a problem with the link.

Link R data sets from vignette pages
------------------------------------

[Distance R packages](http://distancesampling.org/R/index.html) provides links to a series of 'vignette' (case study) pages along with links to data files in .RMd and CVS format.

The .Rmd are not coloured blue and so it is not clear they are hyper-links. 

It would be preferable to link the data sets from their associated vignette pages. This means that a user coming across a vignette page has everything they need without having to look around elsewhere for the associated data files. 

Move mailing list information to GoogleGroup page
-------------------------------------------------

The page [Distance sampling email list](http://distancesampling.org/distancelist.html) describes the purpose of the Distance mailing list. The [GoogleGroup](https://groups.google.com/forum/#!forum/distance-sampling) page also describes its purpose, but the former description is more expansive than the latter.

Moving the content of 'Distance sampling email list' (all but the reference to the old JISCMail mailing list) to 'GoogleGroup' keeps the description of the purpose of the list, and information as to how to subscribe, with the list itself. It also means there is one less web site page to maintain.

Add a hyperlink from GoogleGroup to web site
--------------------------------------------

There is currently no link to the web site from the GoogleGroup.

Add 'last updated' to all pages
-------------------------------

This allows users to see how fresh, or up-to-date, each page is.

Define 'old version of Mac OS'
------------------------------

In [Distance Extras](http://distancesampling.org/distanceextras.html), define that 'old version' means by specifing a version number (e.g. 'versions prior to X.Y').

Provide examples of how to ensure text files have Windows end-of-line
---------------------------------------------------------------------

[Distance Extras](http://distancesampling.org/distanceextras.html) comments:

> One caveat (true of all cross-platform transfers) is that users should be careful when creating ASCII text files on other operating systems for use in Distance. They need to have the Windows carriage-return and line-feed characters at the end of each line. There are many ways to ensure this happens, and users who work under multiple operating systems will be well aware of the issue already.

It might be useful, for the benefit of new users, to provide examples, or link to relevant online resources.

Add a site map
--------------

Given the number of pages in the web site, a site map would be useful.

Add former team members to the team page
----------------------------------------

[Distance history](http://distancesampling.org/distancehistory.html) lists the Distance team alumni. The current team is listed on [Distance development team](http://distancesampling.org/authors.html). It might be preferable to keep all the team members, current and former, on a single page. If a member leaves then they can just be moved down the page.

Create a Distance history timeline
----------------------------------

[Distance history](http://distancesampling.org/distancehistory.html) provides a textual description of Distance's history and evolution. This could be complemented with a timeline table or graph which could present Distance release dates, periods covered by specific funding, and other notable events.

Remove 'Finally...' from Distance history
-----------------------------------------

[Distance history](http://distancesampling.org/distancehistory.html) comments that:

> Finally Distance 6.2 was released May 2014 and includes bug fixes and additional features to the 6.0 release.

Remove the 'Finally' as it reads like 6.2 is the final release of the project.

Update screenshots to 6.2
-------------------------

[Download Distance 6.2](http://distancesampling.org/Distance/old-versions/distance62download.html) links to [Screenshots of Distance 6](http://distancesampling.org/Distance/D6screenshots.html) with the phrase:

> Screenshots of Distance 6.2 can be found here.

However, the screenshots are from 6.0 not 6.2.

Specify page counts not 'short' and 'longer'
--------------------------------------------

[What is distance sampling?](http://distancesampling.org/whatisds.html) names two articles:

> International Encyclopedia of Statistical Sciences article (pdf, short)
> Encyclopedia of Environmetrics article (pdf, longer)

The page counts (3 and 10) rather than 'short' and 'longer' would be clearer.

Explain what reference formats are allowed
------------------------------------------

[Distance Sampling References](http://distancesampling.org/dbib.html) provides an example template for BibTeX submissions and then comments that 'other formats are acceptable'. You should define what these are, both:

* How the user should submit a reference e.g. as plain-text, or in an XML, Word document, or PDF file.
* The reference itself e.g. using some standard citation format. There is a comprehensive list at [Microformats Citation Formats](http://microformats.org/wiki/citation-formats).

Add sponsor logos
-----------------

Add sponsor logos to [Sponsors of Distance](http://distancesampling.org/distancesponsors.html) to make it more visually engaging.
