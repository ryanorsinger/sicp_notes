
https://rayhightower.com/blog/2015/03/19/using-rlwrap-with-mit-scheme-repl/


Using rlwrap with MIT's Scheme REPL
19 Mar 2015
Users of the Linux or OS X command line know that they can hit the up arrow to view the previously executed command. However, this behavior is missing from the mit-scheme read-evaluate-print-loop (REPL). mit-scheme is the language used in SICP.

For example, hitting the up arrow in the Scheme REPL gives us this non-useful result: ^[[A. The previous command is not repeated.

How do we add up-arrow functionality to the mit-scheme REPL? By using rlwrap.

Installing rlwrap
On Mac OS X with Homebrew, first update Homebrew with $ brew update.

Then install rlwrap.


$ brew install rlwrap
==> Downloading https://homebrew.bintray.com/bottles/rlwrap-0.42.yosemite.bottle.tar.gz
######################################################################## 100.0%
==> Pouring rlwrap-0.42.yosemite.bottle.tar.gz
🍺  /usr/local/Cellar/rlwrap/0.42: 29 files, 312K

You can verify the rlwrap installation as follows.


$ which rlwrap
/usr/local/bin/rlwrap

Using rlwrap
To use rlwrap with scheme do the following.


$ rlwrap scheme

Add an Alias to ~/.bash_profile
To speed things up a bit, we can add an alias to ~/.bash_profile.

# for rlwrap & scheme support. Details: http://rayhightower.com/blog/2015/03/19/using-rlwrap-with-mit-scheme-repl/
alias sicp='rlwrap scheme'

So now when we type sicp at the command line…

$ sicp
MIT/GNU Scheme running under OS X
Type `^C' (control-C) followed by `H' to obtain information about interrupts.

Copyright (C) 2014 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

Image saved on Saturday May 17, 2014 at 2:39:25 AM
  Release 9.2 || Microcode 15.3 || Runtime 15.7 || SF 4.41 || LIAR/x86-64 4.118 || Edwin 3.116

1 ]=>

Exactly what we expect.

Conclusion
And now we have it. The up-arrow behavior that we enjoy at the command line is now in the Scheme REPL. Big savings in time, and better for learning.