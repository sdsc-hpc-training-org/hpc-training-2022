# SDSC HPC User Training 2021

**WEEK 1: Jan 22, 2021**

## TOPIC:  Kickoff and Orientation
**Presented By:** [Mary Thomas, SDSC](https://hpc-students.sdsc.edu/instr_bios/mary_thomas.html)  (mpthomas at ucsd.edu)

## READING AND PRESENTATIONS:
* **Lecture material:** 
   * [HPC User Training - Overview](./hpc-overview-jan2021.pdf)
   * [HPC User Training - Week1 - Updates](./HPC_UT21_Week1_Updates_01_22_21.pdf)
* **Video Recording:** 
   * [Interactive Video](https://education.sdsc.edu/training/hpc_user_training_2021/week1)
   * [YouTube Video](https://youtu.be/C9GIJLimbYg)
* **Source Code/Examples:** [N/A]()

## WEEK 1 TASKS:

### 1. Register for the HPC Training:
[https://na.eventscloud.com/website/21055/home/](https://na.eventscloud.com/website/21055/home/)


### 2. Setup XSEDE Portal Account: [https://portal.xsede.org](http://portal.xsede.org)
Steps to create your username:
   1.  Go to the XSEDE website
   2.  Add information about yourself including institution and email address
   3.  Receive an account verification email
   4.  Go back to account verification on the Sign In page and enter the email, verification code (you can find the code in the email received)
   5.  Choose your own username and password
   6.  Enter the username information in the SDSC form

### 3. Confirm Enrollment and submit your PortalID (Google Form):
* [https://tinyurl.com/hpc-user-training-signup](https://tinyurl.com/hpc-user-training-signup)
* Be sure to enter your XSEDE PortalID

### 4. Once you have confirmed your enrollment and given us your XSEDE PortalID:
* You will be added to the HPC Training Education Allocation.
* In a few days, you will recieve notification that your Expanse account is ready for logging on with instructions on how to set your password.
* **Note: Your Expanse account password will be the same password that you used when creating your XSEDE Portal account.**

### 5. After your account has been created on Expanse and you have set your password, log on and clone the training repository:
```
[mthomas@login01 ~]$ git clone https://github.com/sdsc-hpc-training-org/hpc-training-2021.git
Cloning into 'hpc-training-2021'...
remote: Enumerating objects: 23, done.
remote: Counting objects: 100% (23/23), done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 23 (delta 8), reused 5 (delta 2), pack-reused 0
Unpacking objects: 100% (23/23), done.
[mthomas@login01 ~]$ cd hpc-training-2021/
[mthomas@login01 hpc-training-2021]$ ll
total 80
drwxr-xr-x  4 mthomas use300     7 Jan 22 02:43 .
drwxr-x--- 23 mthomas use300    42 Jan 22 02:43 ..
drwxr-xr-x  8 mthomas use300    13 Jan 22 02:43 .git
-rw-r--r--  1 mthomas use300  1799 Jan 22 02:43 .gitignore
-rw-r--r--  1 mthomas use300 18092 Jan 22 02:43 LICENSE
-rw-r--r--  1 mthomas use300    96 Jan 22 02:43 README.md
drwxr-xr-x  2 mthomas use300     3 Jan 22 02:43 week1_introduction
[mthomas@login01 hpc-training-2021]$ cd week1_introduction/
[mthomas@login01 week1_introduction]$ ll
total 27
drwxr-xr-x 2 mthomas use300    3 Jan 22 02:43 .
drwxr-xr-x 4 mthomas use300    7 Jan 22 02:43 ..
-rw-r--r-- 1 mthomas use300 2522 Jan 22 02:43 README.md
[mthomas@login01 week1_introduction]$ 
```

### 6. run a few of the commands in these basic self-guided tutorials (to make sure the account is working):
* [Basic_HPC skills:](https://github.com/sdsc-hpc-training-org/basic_skills)
* Check that your Unix skills and connection skills are good.

### 7. Suggestion:  Make it easier and more secure to connect to Expanse using ssh-agent:   
* https://github.com/sdsc-hpc-training-org/hpc-security/blob/master/ssh_methods/connect-using-ssh-agent.md
Note: we do not recommend using passwordless SSH.

### Note: Reporting your work:
We will track your work using automated scripts
You will need to name the directories and permissions as described in the ``reporting_your_work.md`` document.



For questions or comments, contact Mary Thomas @ mpthomas  at  ucsd.edu
