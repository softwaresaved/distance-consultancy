Project Governance
==================

Mike Jackson, The Software Sustainability Institute / EPCC, The University of Edinburgh

Introduction
------------

The [Distance project](http://distancesampling.org) provides software, Distance, for the design and analysis of distance sampling surveys of wildlife populations. Distance is used by biologists, students, and decision makers to better understand animal populations without the need for these users to have degrees in statistics or computer science. 

This report discusses issues around the governance of the Distance project. This includes copyright, licencing, support, contributions, issue and bug management etc.

Please contact the author at m.jackson@software.ac.uk if you have any queries.

Review status
-------------

This report, started 08/09/14, is currently work-in-progress and is a mix of notes, recommendations, and questions. The current content has arisen as a result of a

* [Web site review](./WebSiteReview.md)
* [User experience review](./UserExperienceReview.md)
* Developer experience review

----------------------------------------------------------------------

Copyright and licence
=====================

[Distance for Windows](http://distancesampling.org/Distance/index.html) states that:

> Distance 6.2 as well as previous versions (6.1, 5.0, 4.1, 3.5 and 2.2) are available for download below at no cost. Suggested citations for all three versions are given on the citation page.

[Citing Distance](http://distancesampling.org/citation.html) provides the recommended citation for Distance:

> Thomas, L., S.T. Buckland, E.A. Rexstad, J. L. Laake, S. Strindberg, S. L. Hedley, J. R.B. Bishop, T. A. Marques, and K. P. Burnham. 2010. Distance software: design and analysis of distance sampling surveys for estimating population size.  Journal of Applied Ecology 47: 5-14. DOI: 10.1111/j.1365-2664.2009.01737.x

It also suggests that users: 

> be explicit about the version and release number of Distance you used, since results may vary between versions.  For example, you might write in a methods section: 'Analyses were carried out using Distance 6.0 release 2 (Thomas et al. 2010)' where the citation lists the above paper.

This is good practice and contributes to reproducible research.

Move the citation request to release-specific download pages
------------------------------------------------------------

This would mean that a user sees the request before they download Distance and may prompt them to cite Distance.

Make the citation request a requirement
---------------------------------------

Consider making the citation request a requirement, by adding it to the Use Agreement. This is becoming more popular amongst research software developers, to help demonstrate impact. For example:

> Any results that you produce using Distance and which you publish
> - including posters, papers, presentations or book chapters - in
> paper or electronic form, must cite:
>
> ... 

Clarify licensing of Distance extras
------------------------------------

[Distance Extras](http://distancesampling.org/distanceextras.html) provides links to Distance-related tools and downloads. The licensing of these is unclear from the page.

----------------------------------------------------------------------

Communication
=============

The project's [Google Group](https://groups.google.com/forum/#!forum/distance-sampling):

* Allows anonymous browsing.
* Allows posting once a user has a free Google ID.
* Has regular traffic, at least 1-2 posts a month.

This provides evidence that the project both open is active.

The project's [Bugzilla](http://www.ruwpa.st-and.ac.uk/distance/bugzilla/):

* Allows anonymous browsing.
* Allows posting once a user has a free Bugzilla account.
* Does not seem to have regular activity (see below).

Ensure more than one team member can access distance@mcs.st-and.ac.uk
---------------------------------------------------------------------

Requests for users to contact Distance team members via their personal e-mail addresses should be avoided, just in case they are on leave, or they leave. 

Any e-mails from users should go to the project e-mail account, and more than one team member should have access to this. This ensures that e-mails are replied to in a timely manner. A user can be deterred from using software further, or a potential user might look elsewhere, if they get no reply to an e-mail. In the worst case this can lead to bad word-of-mouth to others. 

What is the process for the use of Bugzilla?
--------------------------------------------

On 09/09/14, Bugzilla had 113 open bugs, opened between 09/2010 to 05/2014. There were 5 closed bugs. A number of the bugs raised have stagnated e.g.

* [118](http://www.ruwpa.st-and.ac.uk/distance/bugzilla/show_bug.cgi?id=118). Opened 2014-05-06, a Distance team member responded, and the user replied on 2014-05-08, since then there has been no action.
* [116](http://www.ruwpa.st-and.ac.uk/distance/bugzilla/show_bug.cgi?id=116). Opened 2014-03-17, no response from the Distance team.

Being unresponsive may lead users to conclude that the project is dead, or a product is not being maintained. In the worst case this can lead to bad word-of-mouth to others. 

See also 'Define a support policy and process' below.

Adopt an issue tracker
----------------------

[Current restrictions, known problems and workarounds Distance 6.0 Release 2](http://distancesampling.org/Distance/old-versions/d60knownproblems.html) lists various known problems e.g.

> 247 General -  Details windows.  On systems with extended character sets (e.g., Chinese, Japanese and Korean Language systems), the results of running analyses, surveys, etc. are not displayed.  This occurs because ... Workaround: ... [LJT 28 Nov 2003]

These are also listed in the [Distance 6.2 Release 1 Release Notes - 22 April 2014](http://distancesampling.org/Distance/old-versions/downloads/ReadMeD62.rtf)

There is no Bugzilla entry with this number.

Currentlym known problems, resolved problems and possible solutions are spread across the user's guide and the developer's manual, and within web pages. For Distance's R components, `NEWS` files in each component's GitHub repository liss changes and bug fixes. It is unclear how, or whether, these myriad resources are kept consistent.

The developer's manual, p13, describes, at least part of, the current process for tracking bugs and issues with Distance for Windows, refering to files on the Distance developer's virtual machine:

> Worklist, resolved and known problems These are Word documents. Worklist contains a list of things to do, KnownProblems contains the list of known problems (with numbers) and ResolvedProblems is the list of problems fixed in each version. KnownProblems is periodically saved as an html file and uploaded to the Distance web-site. Once problems are fixed they are greyed out in KnownProblems, and when a new version is released all of the fixed problems are transferred over into the ResolvedProblems list ... which forms the basis for part of the ReadMe file ...

It is unclear how bugs are recorded, whether developers record problems they are notified of via e-mail, and how, and whether, they are resolved. It is also unclear why both Bugzilla and this manual, document-oriented solution are being used, perhaps to make updating documentation easier.

Fully adopting an issue tracker for managing known problems and solutions would allow for a more systematic and organised approach to problem management. Rather than information spread across a number of documents, hosted in a number of locations, they'd provide a single point of access - one problem recorded in one place only - for developers and, if made publicly readable, for users. Making them publicly readable would make the creation of known problems and resolved problems more efficient - release notes and other documents can just provide a list of the issues corresponding to each known problem or resolved problem, plus their descriptive text. Users can then consult the issue tracker for more information.

The GitHub repositories for `mrds`, `dsm`, `Distance`, `packrat-distance-6.2` and `WiSP` all have issue trackers but these are unused.

One migration plan towards using issue trackers is:

* Create two new repositories in the [Distance development](https://github.com/DistanceDevelopment) GitHub project, one each for:
  - Distance for Windows
  - FORTRAN MCDS analysis engine
* Harvest all the known problems for Distance for Windows, FORTRAN MCDS analysis engine and R MRDS and DSM components.
* Populate the issue trackers for each of these components with the known problems.
* Link the issue trackers from the Help and Support and Get in Touch pages proposed in the [Web site review](./WebSiteReview.md).

There have been issues with users being reluctant to use Bugzilla - GitHub issue trackers have a far less intimidating user interface. They also allow for a more direct linkage between issues and the source code to which the issues apply.

See also 'Define a support policy and process' below.

Define a support policy and process
-----------------------------------

The project releases a number of products:

* [Distance for Windows](http://distancesampling.org/Distance/index.html): Distance releases past and present.
* [Distance R packages](http://distancesampling.org/R/index.html): R packages, via CRAN and in-development versions on GitHub.
* [Distance Extras](http://distancesampling.org/distanceextras.html): Distance-related tools.

[Contact us](http://distancesampling.org/contact.html) states that:

> Please remember that Distance is free, so techical support is given on a 'best effort' basis (i.e., we'll do the best we can, given our other commitments).

From discussions with the Distance developers it was discovered that:

* Older Distance versions are not officially supported. It is recommended that users use the most recent version.
* R packages are supported via the GoogleGroup.
* In-development versions cloned from the GitHub repositories are not supported and their use is not recommended. However, bug reports would be logged and addressed.
* Distance extras are not supported.

However, from the web site, it is unclear to users exactly what support they can expect. 

As there have been issues with users being reluctant to use Bugzilla, users can be told to submit all feature requests and bug reports go via GoogleGroup. For these, a team member can then raise a ticket. 

You can never 100% stop users e-mailing individual members of the team. However, any users that contact individual team members can politely be requested to resubmit their request to the GoogleGroup. Such requests can emphasise that others may be interested in the request (or may be stuck with the same bug) and may be interested in the answer. If a user really wants/needs help they will do this. Or, for a first-timer, you can send their e-mail and your reply to the GoogleGroup yourself. If they reply to you personally, remember to CC the GoogleGroup in your reply.

For a project I worked on for many years, OGSA-DAI, we found that this approach was the least painful.

It is worth defining a support process and policy. This can define:

* Which products are supported, and which are not.
* The level of support for each component e.g. 'best effort', above.
* When users can expect a response e.g. 'we aim to reply to all e-mails within 1 week'. 
 * Responding to an e-mail or new Bugzilla or GitHub ticket ensures the user does not feel ignored, which can be an issue as mentioned previously. 
 * Responding to a user request does not imply fixing a bug or implementing a feature, it merely acknowledges that you've heard them. No-one has a right to *expect* support for free software.
* How users should report bugs or request features. A web page summarising this is proposed in the [Web site review](./WebSiteReview.md).

----------------------------------------------------------------------

Impact
======

Usage statistics
----------------

Both the [Distance](http://distancesampling.org/) web site front page and [Who Uses Distance?](http://distancesampling.org/Distance/distanceusers.html) describe usage statistics and that a database of downloaders is kept. The release-specific Download forms (GoogleForms) record:

* Name
* E-mail
* Country
* Study taxa: Birds, Terrestrial mammals, Marine mammals, Reptiles/amphibians, Fish, Insects, Plants, Other (user-specified)

[Who Uses Distance?](http://distancesampling.org/Distance/distanceusers.html) describes the approach to gathering usage statistics. The statistics are derived from unique e-mails registered during download with the comment that:

> the number of unique emails registered during download is likely an overestimate of the true number of people using the program.  This is because: (1) some people will have changed email address, and then re-registered to download a new version under their new address; (2) some people will have downloaded the program but never seriously used it.  On the other hand, we known that some institutions have downloaded the program only once, and then loaded it onto a network of machines for use in teaching, etc.

These are augmented by the number of e-mail list users, with the comment that:

> A separate measure of the number of 'serious' users of Distance is those on the distance-sampling email list.  These people are prepared to receive several emails a week on the topic of distance sampling, so can be taken to be somewhat committed to the subject. Not all members of the list are necessarily Distance users, but we expect that most are.

Impact data from the old Distance web-site is stored on a local network share/web server within CREEM at St. Andrews, `\\SHELOB\www\htmlruwpa\distance\log`. Impact data for the new web-site is stored within a Google spreadsheet to which Dave Miller, Eric Rexstad and Len Thomas have access. Analysis is documented (`Y:\Workshops\Distance\DistanceDownloads\getdownloadsfromemail.r`) and is currently manual.

Consider cross-referencing e-mails from downloaders with e-mails to the forum e.g. a serious user could be a downloader who has submitted N+ e-mails to the forum.

Mutual promotion
----------------

[Other software](http://distancesampling.org/othersoftware.html) lists software that uses Distance components e.g. MGET and WebSim.

You may want to approach these groups and ask whether some form of mutual promotion can be done. 

----------------------------------------------------------------------

Backwards compatibility policy
==============================

Any changes to directory structures, naming conventions or project files could cause problems for existing users who wish to upgrade their version. Such changes should be considered carefully and users warned if such changes are implemented, before they upgrade.  Likewise, changes to function names, arguments or return types in R packages could also cause upgrade problems for developers using these. The backwards compatibility policy are mentioned in the user's guide but are not as explicit as they should be.

Make backwards compatibility policy more explicit
-------------------------------------------------

User's guide p289 has a backwards compatibility statement for the database API in `D6DbEng.dll`:

> Warning! The database API is primarily intended for internal use by those working on the Distance project. There is no guarantee that the API will remain the same in subsequent releases, although we will endeavor not to break the current interface.

p311 states that:

> In previous versions of Distance, the CDS and MCDS engine required 5 header lines, and not six (because there was no bootstrap progress file). Also, the bootstrap file came before the plot file. So, if you have any code for calling previous versions, you'll need to update it to call the new version.

This reference to the MCDS command file breaks backwards compatibility with previous versions of MCDS. This is buried within 'Appendix - Inside Distance'. It did not appear in the Distance 6.2 Release 1 Release Notes - 22 April 2014. There there may be users who use MCDS stand-alone who would be unaware of this important change.

p296 has a deprecation statement:

> Note! The technology used by the Distance database engine (Jet 3.51) has been replaced by Microsoft by newer technology, so it is unlikely they will issue IISAM drivers to link to newer versions of the above software. Given the overhead that would be required, it is also unlikely that we will be updating the Distance database engine to use newer technology any time soon. Many newer programs can, however, work with files in the older formats - for example, newer versions of Excel can easily save files as Excel 97-2002 (Excel 8.0) and work with them in that format.

Policies on backwards compatibility and deprecation should be prominent on the web-site and in the release notes and, for R components, in each R repository. This especially applies to any changes that are made that break backwards compatibility and which may cause users and developers problems, and waste their time, if they are not made aware of these changes.

Be specific when mentioning previous versions
---------------------------------------------

User's guide p311 states:

> In previous versions of Distance, the CDS and MCDS engine required 5 header lines, and not six (because there was no bootstrap progress file). Also, the bootstrap file came before the plot file. So, if you have any code for calling previous versions, you'll need to update it to call the new version

It is unclear whether 'previous versions of Distance' means versions prior to Distance 6, or, versions prior to the version of Distance for which this paragraph was first added to the user guide. It would be clearer to phrase such statements as, for example:

> In versions of Distance prior to Distance 6...

Or, see [Migration from dsm 1.1.3 to 2.1.5](http://distancedevelopment.github.io/dsm-dsm113to215.html).

Automate upgrade support
------------------------

It can be useful to provide tools to help users and developers automatically upgrade from previous versions e.g. for the above this could be a script to convert command files to the 6 header line format mentioned above.

----------------------------------------------------------------------

Various
=======

Is compatibility of Distance extras with Distance releases tested?
------------------------------------------------------------------

[Distance Extras](http://distancesampling.org/distanceextras.html) provides links to Distance-related tools and downloads. As these are unsupported components they are not tested for compatibility with new Distance releases as they appear.

Bibliography
------------

[Distance Sampling References](http://distancesampling.org/dbib.html) on the web site and [Distance Sampling References](http://www.ruwpa.st-and.ac.uk/distancesamplingreferences/) accessed via the St. Andrews CREEM training pages both list searchable bibliographies. The pages have the same look and feel apart from colour scheme.

This data is stored as 3 Bibtex files using JabRef. These files are concatenated then an HTML page is generated. See [the distancesampling.com repository, file `makebib.sh`](https://github.com/DistanceDevelopment/distancesampling.com/blob/master/biblio/makebib.sh). The script is run as a `cron` job on a server at CREEM, every Monday.

The data is stored within a Dropbox folder shared between Dave Miller, Eric Rexstad and Tiago Marques, to which all have access.

The web site lists 1274 references and the CREEM training page lists 1277 references. The former is updated via a `cron` job.

It may be worth having one definitive version of the data, or just deprecating the latter page with the former, with a redirect to the web site.
