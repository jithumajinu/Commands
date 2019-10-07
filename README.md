# GitCommands

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

















   

 