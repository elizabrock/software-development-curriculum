# Hidden Files

In Unix-based operating systems (e.g. Ubuntu and OS X), files that begin with a dot ('.') are called hidden files.  By default, these files are not shown when browsing the filesystem, either via. the command line or via. filesystem GUIs.

For example, if I run `ls` in a directory with the files `.myhiddenfile.txt` and `someotherfile.txt`, I would see:

    > ls
    someotherfile.txt
  
If I instead used the `-a` flag, ( `ls -a`) I would see:

    > ls -a
    .myhiddenfile.txt
    someotherfile.txt

In graphical file system browsers, such as Ubuntu Filesystem Browser, and OS X's Finder.app, you can change the preferences in order to make hidden files visible.

* [Instructions for OS X]( http://mac.tutsplus.com/tutorials/os-x/quick-tip-revealing-hidden-files-in-os-x/ )
* [Instructions for Ubuntu](http://www.howtogeek.com/howto/ubuntu/view-hidden-files-and-folders-in-ubuntu-file-browser/)

## References:

* [Wikipedia: Hidden File and Hidden Directory](http://en.wikipedia.org/wiki/Hidden_file_and_hidden_directory)
