# Basic Command-Line Fluency

## The Command Prompt

The command prompt can be called the shell, the command line, the terminal, or the console. OS X users tend to call it the terminal, as that is the name of the application in OS X.

I'm assuming that the reader has a basic grasp of how to turn on their terminal, etc.  This document is here merely to serve as a quick reference to commands that you should either know already or learn soon.

## Basic Commands

### less

Displays a text document in your terminal.  You can navigate the document using your keyboard:

* space or 'f' will move you forward in the document
* 'b' will move you back in the document
* the up and down arrow keys will move you up and down by one line
* '/word' followed by return will search for 'word' in the document. Press 'n' to go to the next matching line, or 'p' to go to the previous matching line.
* 'q' will exit less

Example:

	> less mylongtextdocument.txt

### man

<b>man</b>ual for unix command.

	> man ls

Displays the manual for the command `ls`, using less.

### pwd

<b>p</b>rint <b>w</b>orking <b>d</b>irectory

Example:

	> pwd
	/Users/elizabrock/Projects/software-development-curriculum/computer-science

### cd

<b>c</b>hange <b>d</b>irectory

	> pwd
	/path/to
	> cd adirectory/
	> pwd
	/path/to/adirectory

### ls

<b>l</b>i<b>s</b>t directory contents

	> ls
	advanced-cs           computer-networks     programming
	algorithms            databases
	computer-architecture operating-systems

When using the 'l' flag, `ls` includes details about the files: the file permissions, the file's owner, the file's group, the size, date last modified, and the filename.

	> ls -la
	total 32
	drwxr-xr-x  10 elizabrock  staff    340 Mar  2 14:23 .
	drwxr-xr-x  13 elizabrock  staff    442 Mar  2 16:39 ..
	-rw-r--r--@  1 elizabrock  staff  12292 Mar  2 14:29 .DS_Store
	drwxr-xr-x   9 elizabrock  staff    306 Mar  2 14:29 advanced-cs
	drwxr-xr-x   7 elizabrock  staff    238 Mar  2 14:29 algorithms
	drwxr-xr-x   3 elizabrock  staff    102 Mar  2 10:30 computer-architecture
	drwxr-xr-x   6 elizabrock  staff    204 Mar  2 12:55 computer-networks
	drwxr-xr-x  29 elizabrock  staff    986 Mar  2 14:29 databases
	drwxr-xr-x   7 elizabrock  staff    238 Mar  2 19:10 operating-systems
	drwxr-xr-x   6 elizabrock  staff    204 Mar  2 14:23 programming

## Files & File Permissions

File permissions are denoted in an octal notation.  This list is by no means complete, and this summary is intended as a refresher, rather than to teach you about the full file permission structure. You can read up on this on Wikipedia!

	| Symbolic Notation | Octal Notation | English                |
	| ----------        | 0000           | no permissions         |
	| ---x--x--x        | 0111           | execute                |
	| --w--w--w-        | 0222           | write                  |
	| --wx-wx-wx        | 0333           | write & execute        |
	| -r--r--r--        | 0444           | read                   |
	| -r-xr-xr-x        | 0555           | read & execute         |
	| -rw-rw-rw-        | 0666           | read & write           |
	| -rwxrwxrwx        | 0777           | read, write, & execute |

(Source: Wikipedia's File System Permissions article)

### whoami

Prints out the user you are currently logged in as.

	> whoami
	elizabrock

### chown

<b>ch</b>ange <b>own</b>er

Changes the file or directory's owner.

	> ls -la
	total 0
	drwxr-xr-x   6 elizabrock  staff  204 Mar  3 09:19 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:12 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  3 09:19 awesomefile
	> chown joe awesomefile
	> ls -la
	total 0
	drwxr-xr-x   6 elizabrock  staff  204 Mar  3 09:19 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:12 ..
	-rw-r--r--   1 joe         staff    0 Mar  3 09:19 awesomefile

### chmod

<b>ch</b>ange file <b>mod</b>e

Changes the permissions on a file.

This is often used to make a file executable.

	> ls -la
	total 16
	drwxr-xr-x   4 elizabrock  staff   136 Mar  3 09:27 .
	drwxr-xr-x  11 elizabrock  staff   374 Mar  3 09:27 ..
	-rw-r--r--@  1 elizabrock  staff  6148 Mar  3 09:27 .DS_Store
	-rw-r--r--   1 elizabrock  staff     0 Mar  3 09:27 myscript.sh
	> chmod +x myscript.sh
	> ls -la
	total 16
	drwxr-xr-x   4 elizabrock  staff   136 Mar  3 09:27 .
	drwxr-xr-x  11 elizabrock  staff   374 Mar  3 09:27 ..
	-rw-r--r--@  1 elizabrock  staff  6148 Mar  3 09:27 .DS_Store
	-rwxr-xr-x   1 elizabrock  staff     0 Mar  3 09:27 myscript.sh

### touch

"Touches" a file, which creates the item if it doesn't exist.  Otherwise it updates the last modified timestamps and last accessed timestamps on the file. (Note: `ls -la` shows the time at which the file was last modified)

	> cd mydir
	> ls -la
	total 0
	drwxr-xr-x   3 elizabrock  staff  102 Mar  2 19:10 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:10 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:10 existingfile

	> touch newfile
	> ls -la
	total 0
	drwxr-xr-x   4 elizabrock  staff  136 Mar  2 19:10 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:10 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:10 existingfile
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:12 newfile

	> touch existingfile
	> ls -la
	total 0
	drwxr-xr-x   4 elizabrock  staff  136 Mar  2 19:10 .
	drwxr-xr-x  11 elizabrock  staff  374 Mar  2 19:10 ..
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:13 existingfile
	-rw-r--r--   1 elizabrock  staff    0 Mar  2 19:12 newfile

### mkdir

<b>m</b>a<b>k</b>e a <b>dir</b>ectory. (A directory is just another word for a folder).

	> ls
	existingfile
	> mkdir adirectory
	> ls
	adirectory   existingfile
	> cd adirectory/
	> pwd
	/path/to/adirectory

### rm

<b>r</b>e<b>m</b>ove a given file or directory.

	> ls
	existingfile newfile
	> rm existingfile
	> ls
	newfile

To remove a directory, you must use the -r (recursive) flag:

	> ls
	adirectory existingfile
	> rm adirectory/
	rm: adirectory/: is a directory
	> rm -r adirectory/
	> ls
	existingfile

### cp and mv

<b>c</b>o<b>p</b>y

	> ls
	adirectory   existingfile newfile
	> cp existingfile copyofexistingfile
	> ls
	adirectory         copyofexistingfile existingfile       newfile

<b>m</b>o<b>v</b>e

	> ls
	adirectory   existingfile newfile
	> mv existingfile newname
	> ls
	adirectory newfile    newname

## Processes & Executables

### which

<b>which</b> version of the executable with this name be executed?

This will only tell you about the executables that can be found via. your PATH. The -a flag will tell you all of the possible executables that are in your PATH with that name.

	> which ruby
	/Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby
	> which -a ruby
	/Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby
/usr/bin/ruby

Also, running `man which` is amusing.  You should try it.

### ps, pgrep and top

<b>top</b> gives you a self-updating list of programs sorted by resource consumption.  I'm not going to provide an example as it is prohibitively long.  However, you can try it out yourself.  (Hint: type 'q' to quit top.)

<b>p</b>rocess <b>s</b>tatus.  This is the "print out a snapshot, rather than the whole nine yards" equivalent of `top`. I'm not going to provide an example as it is prohibitively long.  However, you can try it out yourself by running `ps aux`.  (Note: I typically use the flags a, u and x, to get better information about what is running.)

I often combine `ps aux` to get detailed information about all of the running processes with a given name.

For example, if I wanted to find the list of all running ruby process:

  	> ps aux | grep ruby
		elizabrock      43561   1.7  0.7  2608404 123548 s014  S+    9:28AM   0:02.72 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails s -p 3001
		elizabrock      43565   0.0  0.0  2432784    512 s006  R+    9:28AM   0:00.00 grep ruby
		elizabrock      43432   0.0  0.8  2611100 137284 s004  S+    9:27AM   0:04.53 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails c
		elizabrock      33330   0.0  1.5  2770480 248576 s003  S+   Sat12PM   1:46.01 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails s

This shows that I'm running two rails servers (one of which is running on port 3001), and a rails console.  Note that that also includes the grep process I ran, since that has ruby in the command.

<b>p</b>process <b>grep</b> searches for processes with a particular name and returns their process ids (process id is typically shortened to "pid").

	> pgrep ruby
	33330
	43432
	43561

You'll notice that the pids for those ruby processes are also included in the output from `ps aux`, above.

### kill

<b>kill</b> process

Kill terminates processes.  It is very useful when you have a process that is no longer responding to user input or that you simply can't find anymore.

`kill` only accepts process ids, so I typically combine it with using `pgrep` or `ps aux` to find the process id.

`kill` is sometimes combined with the `-9` flag to signall a process to terminate immediately, rather than request a process to end (which often involves the program wrapping up whatever it was doing).  It is more polite to allow the process to wrap up gracefully (e.g. regular `kill`) rather than forcing it to terminate immediately (e.g. `kill -9`)

You can read more about process signals by running `man kill` or by reading the Wikipedia article on Unix signals, referenced below.

Example of using `kill` to end the rails console process that we found using `ps aux`:

	> ps aux | grep ruby
	elizabrock      33330   0.0  1.5  2770480 248576 s003  S+   Sat12PM   1:46.09 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails s
	elizabrock      43682   0.0  0.0  2432784    632 s006  S+    9:36AM   0:00.00 grep ruby
	elizabrock      43561   0.0  0.7  2608404 123548 s014  S+    9:28AM   0:02.74 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails s -p 3001
	elizabrock      43432   0.0  0.8  2611100 137284 s004  S+    9:27AM   0:04.53 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails c
	> kill 43432
	> ps aux | grep ruby
	elizabrock      43708   0.0  0.0  2432784    616 s006  R+    9:37AM   0:00.00 grep ruby
	elizabrock      43561   0.0  0.7  2608404 123548 s014  S+    9:28AM   0:02.74 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails s -p 3001
	elizabrock      33330   0.0  1.5  2770480 248576 s003  S+   Sat12PM   1:46.10 /Users/elizabrock/.rvm/rubies/ruby-2.1.1/bin/ruby bin/rails s


If we return to the terminal window where `rails c` was running, we will see:

	> rails c
	Loading development environment (Rails 4.1.0)
	[1] pry(main)> 1 + 1
	=> 2
	[2] pry(main)> puts "Hello"
	Hello
	=> nil
	[3] pry(main)> Terminated: 15

If we had used `kill -9` instead, we would see:

	> rails c
	Loading development environment (Rails 4.1.0)
	[1] pry(main)> 1 + 1
	=> 2
	[2] pry(main)> puts "Hello"
	Hello
	=> nil
	[1] pry(main)> Killed: 9

There is also a command `killall` that kills all the processes with a given name.  This is dangerous, since you may kill process that you weren't expecting to kill.  Don't use it.

## Finding Things

### find

<b>find</b> files

`find` finds files.

Example:

	> find . -name basic-command-line-fluency.md
	./computer-science/operating-systems/basic-command-line-fluency.md

Additional examples can be found in the cheatsheet referenced below.

### grep

The origins of the name `grep` is an inside joke about regular expressions.  The best mnemonic I can come up with is: <b>g</b>et things matching <b>re</b>gular ex<b>p</b>ression.  It's a stretch.

Using grep to find all the files where I used a particular curse word.

	> grep -r fuck .
	./exercises/xx-software-requirements/instructions.md:Assume an absolute asshole\* is going to try to fuck it up, while still following your instructions to the letter.

Whoops! And here, I thought I'd managed to censor myself!

Additional examples can be found in the cheatsheet referenced below.

## Getting things from the Intertubes

### cURL & wget

<b>c</b>lient-side <b>URL</b> transfers.  The name makes no logical sense to me.

<b>w</b>eb <b>get</b>.  This name also makes little sense.

`cURL` and `wget` are very similar, in that they retreive things from the internet.  The main difference is in the command-line syntax.  There is also the fact that `curl` comes standard on most unixes, and `wget` typically has to be installed seperately.

I personally prefer wget because its syntax makes more sense to me.

Regardless. `wget` example:

	>wget http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
	--2014-05-20 09:52:21--  http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
	Resolving www.openss7.org... 142.59.210.7
	Connecting to www.openss7.org|142.59.210.7|:80... connected.
	HTTP request sent, awaiting response... 200 OK
	Length: 3852374 (3.7M) [application/x-bzip2]
	Saving to: ‘strx25-0.9.2.1.tar.bz2’

	100%[==============================================================>] 3,852,374   94.1KB/s   in 41s

	2014-05-20 09:53:02 (92.0 KB/s) - ‘strx25-0.9.2.1.tar.bz2’ saved [3852374/3852374]

`curl` example:

	> curl -O http://www.openss7.org/repos/tarballs/strx25-0.9.2.1.tar.bz2
	  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
	                                 Dload  Upload   Total   Spent    Left  Speed
	100 3762k  100 3762k    0     0    98k      0  0:00:38  0:00:38 --:--:--  101k

You can read more at the resources below.


# Sources and Further Reading:

* [Wikipedia: File System Permissions](http://en.wikipedia.org/wiki/File_system_permissions)
http://mally.stanford.edu/~sr/computing/basic-unix.html
http://cli.learncodethehardway.org/book/
* [Wikipedia: Unix Signals](http://en.wikipedia.org/wiki/Unix_signal)
* [15 Practical Grep Command Examples In Linux / UNIX](http://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/)
* [Cheat Sheet: 21 useful find commands](http://bencane.com/2012/07/22/cheat-sheet-21-useful-find-commands/)
* [curl vs. wget (biased yet relevant)](http://daniel.haxx.se/docs/curl-vs-wget.html)
* [Geek Stuff: wget guide](http://www.thegeekstuff.com/2009/09/the-ultimate-wget-download-guide-with-15-awesome-examples/)
