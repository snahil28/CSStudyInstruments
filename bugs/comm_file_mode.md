## Meta
* Project: comm
* Link to Bug on Project Bug Tracker: 
* Current Stage: Bug diagnosis  

The comm module takes input file argument and behaves weirdly on filetypes - S_IFCHR, S_IFBLK, S_IFIFO


## Updates

**Current Stage: Bug Identification**

Comm keeps on waiting for input when given S_IFCHR filetype, throws infinte garbage output when given S_IFBLK filetype and agaisn keeps on taking input when given S_IFIFO file type in input.
In Crash Simulator, ReplayDataError is thrown only for S_IFCHR filetype, rest works fine with Crash simulator.

### Week 3

**Current Stage: Source of bug identified**

I was unable to test it initially on the latest version but now looking into the source code and reading man page.
