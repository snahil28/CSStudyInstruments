## Meta
* Project: fmt
* Link to Bug on Project Bug Tracker: https://bugs.launchpad.net/ubuntu/+source/coreutils/+bug/1808092
* Current Stage: Bug raised attached with a patch  

The fmt module takes input file argument, and only checks if it is for stdin else it just opens it and starts performing operations on it, it doesn't check for weird filetypes and waits for input indefinitely (char device or FIFO) or keeps running on certain input (block device)


## Updates


### Week 1

**Current Stage: Bug Identified**

When ruuning fmt through crash simulator, modified st_mode and observed the following cases-
1. When changed to S_IFIFO, fmt works fine in crash simulator, whereas in actual it does nothing.
2. When changed to S_IFBLK, fmt works fine in crash simulator, whereas it keeps on running in actual scenario.
3. When changed to S_IFCHR, fmt throws ReplayDataError in crash simulator, and it waits for input in actual scenario.

Need to investigate more to see what is making it to behave diffrently here.

### Week 2

**Current Stage: Source of Bug Diagnosed**

Asked Preston about the above behaviour, and tried testing it with various filetypes and read man page to see if it is expected behaviour or not.


### Week 3

**Current Stage: Bug Fix Implemented**

Made a patch to check the filetypes and tested it with various filetypes.
Modified test case to support newly introduced errors.


### Week 4

**Current Stage: Bug Fix Submitted to Project**

Continued tesxting the patch against weird filetypes.
Got my changes verified with Preston, and worked on things suggested by him.


### Week 5

Submitted a patch to fix fmt, to include checks for following file types- S_IFIFO, S_IFBLK, S_IFCHR and throw message accordingly.
Link to the implementation - 
https://bugs.launchpad.net/ubuntu/+source/coreutils/+bug/1808092
