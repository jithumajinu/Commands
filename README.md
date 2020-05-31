# GitCommands

git config --global user.name "FIRST_NAME LAST_NAME"

git config --global user.email "MY_NAME@example.com"

1) git clone https://github.com/jithumajinu/GitCommands.git

2) git status
    On branch master
    Your branch is up to date with 'origin/master'.

    nothing to commit, working tree clean

3) create folder /src  and create files test1.txt, test2.txt

4) git status
   On branch master
   Your branch is up to date with 'origin/master'.

   Untracked files:
  (use "git add <file>..." to include in what will be committed)

        src/

   nothing added to commit but untracked files present (use "git add" to track)
5) git add .

6) git commit -m "first commit" 

 [master e3ee7e2] first commit
 3 files changed, 22 insertions(+), 1 deletion(-)
 rewrite README.md (100%)
 create mode 100644 src/test1.txt
 create mode 100644 src/test2.txt

7) git push

  Counting objects: 5, done.
  Delta compression using up to 4 threads.
  Compressing objects: 100% (4/4), done.
  Writing objects: 100% (5/5), 600 bytes | 300.00 KiB/s, done.
  Total 5 (delta 0), reused 0 (delta 0)
  To https://github.com/jithumajinu/GitCommands.git
   df42a87..e3ee7e2  master -> master
   
   
8)git checkout -b develop

Switched to a new branch 'develop'
M       README.md


9) git add .

10) git commit -m "first commit develop branch"

11) git push --set-upstream origin develop

12) git checkout -b feature1_develop

13) git push --set-upstream origin feature1_develop

14) git add.

15) git commit -m "commit from feature"

16)git branch -a
  develop
* feature1_develop
  master
  remotes/origin/HEAD -> origin/master
  remotes/origin/develop
  remotes/origin/feature1_develop
  remotes/origin/master

  
17) git merge feature1_develop
Updating d5aba4d..68d1deb
Fast-forward
 README.md | 13 ++++++++++++


 
 Revert previous merge
 Be aware that any modified and uncommitted/unstashed files will be reset to their unmodified state.

18) git reset --hard HEAD~1
HEAD is now at d5aba4d commit from feature



  







   

 
