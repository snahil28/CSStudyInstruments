# Week 2 Progress Report

Tasks done this week - 

* Installed latest version of CrashSimulator, where it also displays the event number in the strace file.

* Tested all packages with the latest version 

* Raised following issues -
  * Issue for [access not implemented](https://github.com/pkmoore/rrapper/issues/56)
  * Issue for [mmap_backing_files](https://github.com/pkmoore/rrapper/issues/55)
  
* Also incurred other issues like,
  * Unable to run reverse_time mutator, no changes are being reflected in strace file after executing it.
  * Also the line number in strace file doesn't match with that in the snip file being generated.
  
* Worked on the following packages and tried reversing the time and modifying file types- 
  fmt, cmp,	uptime, comm,	diff,	w, ispell,	join, wc,	touch, cal,	at	 
  
* Ran into some false negative cases like,
  Changing device types in cmp and diff, throws ReplayDataError in some cases where as it runs fine in actual scenario. Need     to investigate more on this.

* Looked into the source code for fmt, found that they have one check for handling standard input stream, else it just tries     to open the given file argument.

  
  
