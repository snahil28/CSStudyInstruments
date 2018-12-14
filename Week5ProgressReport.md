Made a patch to fix checking and handling of filetypes in fmt.
Following is the link to the bug report - 
https://bugs.launchpad.net/ubuntu/+source/coreutils/+bug/1808092

This includes checks on following filetypes - S_IFIFO, S_IFBLK, and S_IFCHR. 
Also modified the test case to check for errors accordingly.
