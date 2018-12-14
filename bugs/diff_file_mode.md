## Meta
* Project: diff
* Project Bug Identification:
* Link to Bug on Project Bug Tracker:
* Current Stage: Bug Hunting
* Brief description (This can change as you progress) :

The diff command does not check for filetypes - S_IFCHR and S_IFIFO


## Updates

### Week 2

**Current Stage: Bug Identification**

It throws ReplayDataError when filetype is changed to S_IFDIR and works fine in actual scenario.
It keeps on taking input when filetype is S_IFCHR and S_IFIFO.
Throws an error - 'Filename from execution differs from trace', when filetype is S_IFLNK and works fine under normal circumstances.

### Week 3

**Current Stage: Bug Diagnosis**

Was reading man page and need to look into more detail and refer source code for it
