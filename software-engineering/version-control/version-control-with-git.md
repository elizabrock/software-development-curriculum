# Version Control with Git

<blockquote class="twitter-tweet" lang="en"><p>OH “you are not exactly git blameless here.”</p>&mdash; Justin Searls (@searls) <a href="https://twitter.com/searls/statuses/243768104813993984">September 6, 2012</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

## Why version control?

  * Backup
  * Rollback
  * History
  * Deployment
  * No Emailing Files
  * No more index.final.v6.html, etc.

## GIT

  * Distributed
  * Fast
  * Complicated

## Basic GIT commands

You should know how to:

  * Create a local repository
  * Add files to the repository
  * Commit those files (-m)
  * Check the repository status
  * Commit more files
  * Looking at all of your commits (and --pretty=oneline)
  * Interactive add changes

![](https://rawgit.com/pastjean/git-cheat-sheet/master/git-cheat-sheet.svg)

See more at: http://gitimmersion.com

## .gitignore

Gitignore tells git about files that you never, ever want to commit.  Examples of these files are things like .DS_Store, editor-specific files and files that contain sensitive information or logs.

### Global .gitignore

Global .gitignore files are great for ignoring operating system specific files (such as .DS_Store) that you will never want to accidentally commit.

* https://help.github.com/articles/ignoring-files
* http://devoh.com/blog/2013/01/global-gitignore

## Hidden Files

If you're having trouble seeing certain files in OS X Finder, you'll want to enable viewing hidden files:

* http://mac.tutsplus.com/tutorials/os-x/quick-tip-revealing-hidden-files-in-os-x/

## Resources for when things go wrong:

* [On undoing, fixing, or removing commits in git](https://sethrobertson.github.io/GitFixUm/fixup.html)
* [Seriously, The Reflog Isn’t That Scary
Harnessing the power of git-reflog for good](https://medium.com/@./seriously-the-reflog-isnt-that-scary-a4189dd88c40)

## Sources & Further Reading:

* [A Visual Git Reference](http://marklodato.github.io/visual-git-guide/index-en.html)
* [GitRef.org](http://gitref.org/)
