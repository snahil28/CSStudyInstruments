## Meta
* Project: join
* Project Bug Identification:
* Link to Bug on Project Bug Tracker:
* Current Stage: Bug Hunting
* Brief description (This can change as you progress) :

The join command does not error when the filetype is changed to a S_IFCHR, S_IFBLK or S_IFIFO in crash simulator.


## Updates


### Week 2

**Current Stage: Bug Identification**

Join keeps waiting for input when given a filetype of S_IFCHR, S_IFBLK or S_IFIFO. It throws ReplayDataError only when file type is changed to S_IFCHR but works fine for other filetypes in Crash Simulator.


### Week 3

**Current Stage: Bug Identification**

Faced some issues while testing join on the latest version of Crash simulator 


### Week 4

**Current Stage: Source of Bug Diagnosed**

Checking man page to identify if this behaviour is expected or not, and looking into the source code.
