---
layout: page
root: ..
title: How to back up project resources
sections:
- Back up GitHub repository
- Back up GitHub issues
- Back up SourceForge CVS repository
- Back up Bugzilla bug reports
---

## Back up GitHub repository

To back up Git repositories on GitHub, use 'git clone' in GitBash: 

* Start GitBash
* Run: 

<p/>

    git clone https://github.com/DistanceDevelopment/dsm.git

* All the branches will be available e.g.

<p/>

    cd dsm
    git branch -a
    * master
    remotes/origin/Distance6.2-patches
    remotes/origin/HEAD -> origin/master
    remotes/origin/dettablesplot
    remotes/origin/master
    remotes/origin/mrds3


---

## Back up GitHub issues

To back up GitHub issues:

* Visit the URL [https://api.github.com/repos/PROJECT/REPOSITORY/issues e.g. [https://api.github.com/repos/softwaresaved/distance-consultancy/issues](https://api.github.com/repos/softwaresaved/distance-consultancy/issues)
* This provides the issues as a JSON document

To back up GitHub issues via the command-line:

* Start GitBash
* Run: 

<p/>

    curl -o distance-consultancy-issues.json  https://api.github.com/repos/softwaresaved/distance-consultancy/issues

* Check:

<p/>

    head distance-consultancy-issues.json

* For more information, see [GitHub Developer - API - Issues](https://developer.github.com/v3/issues/)

---

## Back up SourceForge CVS repository

To back up the MCDS CVS repository on SourceForge, use rsync, which is supported by GitBash:

* Start GitBash
* Run: 

<p/>

    mkdir distance-sf-cvs
    rsync -av rsync://distanceengines.cvs.sourceforge.net/cvsroot/distanceengines/* distance-sf-cvs

* Check:

<p/>

    ls distance-sf-cvs
    CVSROOT  foptim  mcds  mrds

* You can also check the back up by using your CVS client and using distance-sf-cvs as CVSRoot. For example, using the Free Software Foundation CVS client:
  - Select Start => All Programs => Accessories => Command Prompt
  - Run: 

<p/>

    cvs.exe -d "C:\Application Development\distance-sf-cvs" co mrds

---

## Back up Bugzilla bug reports

To back up Bugzilla bug reports:

* Browse to [Bugzilla](http://www.ruwpa.st-and.ac.uk/distance/bugzilla)
* Click Search
* Set Status: All
* Set Product: All
* Click Search
* Click XML
* Save file e.g. bugzilla-export.xml

This saves the complete bug reports as an XML document. It does not save attachments.

See [Bugzilla:Move Installation](https://wiki.mozilla.org/Bugzilla:Move_Installation) for how to completely back up Bugzilla. This requires access to the server upon which Bugzilla is running.
