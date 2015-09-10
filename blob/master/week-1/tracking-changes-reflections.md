# 1.5 Tracking Changes

##How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes developers' lives easier by making it easy to understand how a file has been changed. If necessary a developer can revert back to old changes. Also it allows for the developer to describe how the file was changed
##What is a commit?
A commit is a way to save changes in git. With it you can type a message the denotes what and why the changes were made.
##What are the best practices for commit messages?
Commit messages should use the present imperative to describe the changes and also explain the reasoning behind the change. They should be concise and quick to summarize the change so another developer reading it knows whether or not they are concerned with it.
##What does the HEAD^ argument mean?
The HEAD^ argument is used in "git reset" to describe how far back you want to "undo" changes in a "git add" or a "git commit." HEAD is the last change. HEAD^2 is the last change before that...etc.
##What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages of a git change are "git add" "git commit" and "git push." When you first edit a file, you can track how it changed via "git status." If you wish to "save" this change, you must run "git add." This notifies git that the change is going to be committed. Then once you run "git commit," the change has been saved. To save this change from your local repository to the remote one you must run "git push"
##Write a handy cheatsheet of the commands you need to commit your changes
* git checkout [branch] - switches to branch you wish to make changes in. It could be the master branch or the new branch
* git status - tracks changes that have been made within the branch
* git add [file or directory] - adds files or directories that have been changed so that they can be committed and "saved" to the branch you are working in. Can also use a wildcard " ." to add all changes.
* git commit - saves changes to current working branch. can add message to denote changes made. 
* git reset [HEAD^] - undos commits to specified number of last commits
* git push - saves changes to remote repository<return>
##What is a pull request and how do you create and merge one
A pull request is a way of GitHub to receive the changes you made on your local machine. Once you push the changes to the remote repository, you can click the option of creating a new pull request. The new pull request will denote the changes you made from the master. Once created, you can merge it with your master by clicking the merge option.
##Why are pull requests preferred when working with teams?
They are preferred because they allow for many developers to make changes at the same time, to the same files and understand why those changes are made. All of those changes, done separately, can be added to a single master file quickly. They make working together more EFFICIENT.
