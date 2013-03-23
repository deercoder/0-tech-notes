跟踪远程分支
===

1. 在任何分支上面设置某个分支跟踪到远程的一个分支。

		git branch --set-upstream my_branch origin/my_branch

	比如下面的例子，设置本地分支test跟踪远程的master(注意：此时并不需要再test分支上面。)

		git branch --set-upstream test origin/master


2. 新建一个本地分支跟踪到远程。

		git checkout -b test --track origin/my_branch
	
	上面的例子就是说将本地的分支test跟踪到远程my_branch分支。