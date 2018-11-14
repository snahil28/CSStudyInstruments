## Meta
* Project: cpython
* Project Bug Identifier: bpo-30400
* Link to Bug on Project Bug Tracker: \<imagine bugs.python.org url here\>
* Current Stage: Bug Fix Accepted or Merged
* Brief description (This can change as you progress) :

The Python shutil module has a function called copyfile that has a race
condition when the file being copied is modified. The race condition occurs
between the time when it is initially checked and when it is actually
copied.


## Updates


### Week 1

**Current Stage: Bug Identified**

When ruuning fmt through crash simulator, modified st_mode and observed the following cases-
1. When changed to S_IFIFO, fmt works fine in crash simulator, whereas in actual it does nothing.
2. When changed to S_IFBLK, fmt works fine in crash simulator, whereas it keeps on running in actual scenario.

Need to investigate more to see what is making it to behave diffrently here.
