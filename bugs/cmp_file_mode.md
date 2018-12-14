## Meta
* Project: cmp
* Project Bug Identification:
* Link to Bug on Project Bug Tracker:
* Current Stage: Bug Hunting
* Brief description (This can change as you progress) :

The cmp command does not check for filetypes - S_IFBLK and S_IFIFO


## Updates

### Week 2

**Current Stage: Bug Identification**

It throws ReplayDataError when filetype is changed to S_IFDIR, S_IFBLK, S_IFIFO, S_IFLNK and S_IFCHR. 
In actual scenario it throws error only for filetypes - S_IFDIR.
It keeps on taking input when filetype is S_IFCHR or S_IFIFO and does nothing and just exits on S_IFBLK.

### Week 3

**Current Stage: Bug Diagnosis**

Asked Preston about this, got to know some false negative cases like the case when filetype is S_IFBLK or S_IFLNK as it behaves expectedly but throws error when tested in Crash simulator.
Need to investigate more on this.
