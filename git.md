---
title: Git for Scientists
subtitle: An essential tool for research
author: Daan van Vugt, <daanvanvugt@gmail.com>
institute: TU/e
date: \today
classoption: aspectratio=169
theme: metropolis
header-includes:
  - \usepackage{gitdags}
  - \setbeamertemplate{navigation symbols}{}
  - \institute{Eindhoven University of Technology}
---

# Version control
* Absolute necessity when collaborating on code
* Extremely useful for personal projects also
* Avoid files like analysis_v3_Daan_FINAL_2.m
* Use history to find bugs faster
* Automatic external backup when using remotes

# Git
* Most popular version control system
* Git manages changes to a tree of files over time
* Excellent integration with many sites and services (Github, GitLab, Bitbucket)

# How does it work?
\begin{figure}
  \begin{tikzpicture}
  \path[use as bounding box] (0,-2.5) rectangle(10.5,2.5);
  \gitDAG[grow right sep = 2em]{ A };
  \end{tikzpicture}
\end{figure}

# Creating commits
\begin{figure}
  \begin{tikzpicture}
  \path[use as bounding box] (0,-2.5) rectangle(10.5,2.5);
  \gitDAG[grow right sep = 2em]{ A -- B };
  \end{tikzpicture}
\end{figure}

# Branches and tags
\begin{figure}
  \begin{tikzpicture}
  \path[use as bounding box] (0,-2.5) rectangle(10.5,2.5);
  \gitDAG[grow right sep = 2em]{ A -- B };
  % Tag reference
  \gittag
  [v0p1]       % node name
  {v0.1}       % node text
  {above=of A} % node placement
  {A}          % target
  % Branch
  \gitbranch
  {master}     % node name and text
  {above=of B} % node placement
  {B}          % target
  % HEAD reference
  \gitHEAD
  {above=of master} % node placement
  {master}          % target
  \end{tikzpicture}
\end{figure}

# Remotes and collaboration
\begin{figure}
  \begin{tikzpicture}
  \path[use as bounding box] (0,-2.5) rectangle(10.5,2.5);
  \gitDAG[grow right sep = 2em]{ A -- B };
  % Tag reference
  \gittag
  [v0p1]       % node name
  {v0.1}       % node text
  {above=of A} % node placement
  {A}          % target
  % Branch
  \gitbranch
  {master}     % node name and text
  {above=of B} % node placement
  {B}          % target
  % Remote
  \gitremotebranch
  {origin/master} % node name and text
  {above=of master} % node placement
  {master}
  % HEAD reference
  \gitHEAD
  {above=of origin/master} % node placement
  {origin/master}          % target
  \end{tikzpicture}
\end{figure}

# Conflicts
\begin{figure}
  \begin{tikzpicture}
  \path[use as bounding box] (0,-2.5) rectangle(10.5,2.5);
  \gitDAG[grow right sep = 2em]{
  A -- B -- { C, D -- E, }
  };
  % Tag reference
  \gittag
  [v0p1]       % node name
  {v0.1}       % node text
  {above=of A} % node placement
  {A}          % target
  % Remote branch
  \gitremotebranch
  [origmaster]    % node name
  {origin/master} % node text
  {above=of C}    % node placement
  {C}             % target
  % Branch
  \gitbranch
  {master}     % node name and text
  {above=of E} % node placement
  {E}          % target
  % HEAD reference
  \gitHEAD
  {above=of master} % node placement
  {master}          % target
  \end{tikzpicture}
\end{figure}

# Merging
\begin{figure}
  \begin{tikzpicture}
  \path[use as bounding box] (0,-2.5) rectangle(10.5,2.5);
  \gitDAG[grow right sep = 2em]{
  A -- B -- { C, D -- E} -- F
  };
  % Tag reference
  \gittag
  [v0p1]       % node name
  {v0.1}       % node text
  {above=of A} % node placement
  {A}          % target
  % Remote branch
  \gitremotebranch
  [origmaster]    % node name
  {origin/master} % node text
  {above=of C}    % node placement
  {C}             % target
  % Branch
  \gitbranch
  {master}     % node name and text
  {above=of F} % node placement
  {F}          % target
  % HEAD reference
  \gitHEAD
  {above=of master} % node placement
  {master}          % target
  \end{tikzpicture}
\end{figure}


# What can I use it for?
Anything text-based!

* Code (MATLAB example follows)
* Papers (Example with Overleaf later)
* Presentations (like this one, see source at \url{https://github.com/exteris/git-for-scientists})

# How to use git with your MATLAB project
* Install git, \url{https://git-scm.com/downloads}
* Include git.m in your project, \url{https://github.com/slayton/matlab-git}
* Create a repository with `git init`
* Stage your files with `git add *.m`
* Create your first commit with `git commit -m "Commit message"`

# How to use git to collaborate on papers
Using Overleaf (only free online editor with unlimited private projects)

1. Create a Project on Overleaf
2. Find the Git Link for your Project (share link, www $\to$ git)
3. Clone your Project with Git
4. Edit your Project and Commit your Changes
5. Push your Changes to Overleaf

\tiny{Steps from \url{https://www.overleaf.com/blog/195}}

# How can I learn it?
1. 15 minute tutorial: \url{https://try.github.io}
2. Just Try It\texttrademark{} and google or ask if you have any problems

Other resources:

* \url{http://nyuccl.org/pages/gittutorial/}
* A Quick Introduction to Version Control with Git and GitHub, PLoS Computational Biology, doi:10.1371/journal.pcbi.1004668 (copies available after the talk)

#
\centering
\huge{Questions?}
