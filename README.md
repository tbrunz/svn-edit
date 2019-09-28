# svn-edit
An application to edit the commit history of a Subversion repository, with an optional conversion to git.

### Goals

The goal of this project is to produce an SVN dump file filter that can:
* Extract history chains of select projects from a mixed-project repository;
* Remove specific commits without breaking history flow;
* Purge undesired file types (EXE, DLL, ISO, etc.);
* Properly trace path trees involving copied/moved paths;
* Allow untangling of complex history chains (excessive moves);
* Allow renaming/collapsing of repo paths;

The primary motivation is not only to split mixed repositories, but also to rehabilitate repos with pathological issues that prevent direct conversion to git/GitHub.  In addition, extracted projects originating in subdirectories of a combined SVN repo should be migrated to canonical top-level "branches/tags/trunk" paths.

The other motivation is to facilitate & automate the conversion of an SVN repo to git/GitHub.  A filtered/converted SVN dump file can be reconstituted into a new SVN repository, which can then be cloned with 'git svn', pushed into a bare git repo, and ultimately "reverse cloned" to GitHub.  This process should include branch name fixups and conversion of SVN tags to proper git tags.  As a manual process this is straightforward, but too tedious and error-prone and so should be automated as well.

### Assumptions

* The SVN project is not assumed to be the sole project stored in the SVN repository;
* The 'trunk' path of the SVN project is not assumed to be (or be in) the "trunk" directory of the SVN repo;
* There may be one or more related "branches" paths for the SVN project, located anywhere in the SVN repo;
* There may be one or more related "tags" paths for the SVN project, located anywhere in the SVN repo;
* It is usually desirable to skip/remove unrelated paths and revisions in the SVN repo;
* There may be inappropriate files or file types committed to the project history which need removal;
* There may be many convoluted repo path "copy" operations in the version history which benefit from untangling, or need it for git conversion;
* It is likely desirable to collapse the project's "trunk" path (if it's not already the root) to be the root path in the "master" branch;
* It is usually desirable to convert the SVN "tags" (branches) into proper git tags (discarding their SVN branches afterwards);
* The end result should be a bare git repo in GitHub containing the "master" branch along with all other associated branches and git tags;

Achieving the above is not simple or straightforward, as it can require muliple dumps of the SVN repo, assembly of a temporary master SVN repo (locally), from which additional dumps and additional temporary SVN repos must be made and then filtered, followed by the assembly of a final SVN repo from the filtered fragments that have been carved out of the original SVN repository.  

A project in an SVN repo can be as simple as a single project using the canonical "trunk", "branches", and "tags" paths at the repo root, or as complex as an SVN repo containing muliple projects, each with its own "trunk", "branches", and "tags" paths.  These paths may be located anywhere in the repo directory structure -- the locations of which may have also evolved over time through the use (or over-use) of 'svn-copy' operations that have relocated and renamed project paths.

This project aims to achieve the above goals through the use of a single interactive executable, which scans the source dump, provides a representation of the history tree structure, allows the user to select trees, exclude items, rename/shorten paths, etc., then generates a corresponding new dump file.  Editing specifications are recorded, replayable, and capable of being copied & modified (so that they can be applied to subsequent filtrations).

Each editing specification defines a directory path in the SVN source repo that is to be extracted (along with its subdirectories), the target path to map it to, and the SVN rev range(s) in the master repo that should be included to support its conversion.  This collection of specifications indicate the trunk/master branch, other branches of interest, and tags to be extracted and reconstituted in the resulting repo.

Once the entire set of conversion specifications has been defined, applied, and consistency checked, the extracted/relocated/renamed repo history is re-dumped to disk, and a new, clean, monolithic project SVN repo can be created.

If conversion to git/GitHub is desired, this SVN repo is created, then cloned using 'git-svn' to create a git working copy having the new SVN repo as its origin.  A second, bare, git repo is then created and set as the origin of the working copy, after which the working copy is pushed to the bare repo.  Finally, the bare git repo is programmatically edited to rename "trunk" to "master", to fixup the names of all branches (e.g., replacing all instances of "%20" with hyphens or other characters), and to convert all SVN "tags" branches into proper git annotated tags (after which the SVN "tags" branches are removed).

The user is expected to create a new git repo in GitHub and provide its URL.  The final git conversion step is to set the GitHub repo as the upstream origin of the local bare repo, then push all the branches and tags to GitHub.  At the conclusion, GitHub shows the "master" branch in the repo's "Code" pane, with the desired top-level directory contents displayed.  The converted branches and tags are similarly available under the "Switch branches/tags" pull-down.

### Status

This project is new and just getting underway.  Currently, a set of algorithms for the entire process detailed above have been developed and tested,  successfully converting three large & complex mixed repositories as a proof-of-concept.  (One sub-project out of 15 failed extraction due to path history complexity that even 'svndumpfilterIN' could not follow, and will likely require this app, as envisioned, to extract.)

The prototyping has been done with a collection of Bash scripts and "svndumpfilterIN", a Python script written by Jasper Lee.  The intent is to rework/rewrite/redesign these and produce a single application written in Pharo.
