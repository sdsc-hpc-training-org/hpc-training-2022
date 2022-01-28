# Reporting your work:
We will track your work using automated scripts, so you need to name the directories and set 
permissions as described below:

1. Create a directory under your Expanse home account, and call it "hpctr22" (for HPC Training)

2. Check that the group access is set to ``sds173``; if not, change the group and reset the access permissions:

```
[username@login01 ~]$ mkdir hpctr22
[username@login01 ~]$ cd hpctr22
[username@login01 hpctr22]$ ls -al
total 18
drwxr-xr-x  2 username use300  2 Feb 19 11:51 .
drwxr-x--- 28 username use300 47 Feb 19 11:51 ..
[username@login01 hpctr22]$ chgrp sds173 .
[username@login01 hpctr22]$ chmod g+s .
[username@login01 hpctr22]$ mkdir week1_introduction
[username@login01 hpctr22]$ mkdir week2_par_batch
[username@login01 hpctr22]$ ls -al
total 19
drwxr-sr-x  4 username sds173  4 Feb 19 12:10 .
drwxr-x--- 28 username use300 47 Feb 19 12:03 ..
drwxr-sr-x  2 username sds173  2 Feb 19 12:10 week1_introduction
drwxr-sr-x  2 username sds173  2 Feb 19 12:10 week2_par_batch
```

3. Create a subdirectory called week1. If you want to add more information to the name, you can
use the convention `week1_<your-description>`, e.g. `week1_introduction` .
* This should result in a directory called 
```
	/home/$USER/hpctr22/week1_<your-description>
```

For questions or comments, contact Mary Thomas @ mpthomas  at  ucsd.edu
