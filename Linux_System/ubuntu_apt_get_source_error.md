更新源错误
===

在使用 Ubuntu 获取程序源码的时候， 执行 apt-get source xxx 后，提示错误。

错误信息如下：

		liuchang@ubuntu:~$ sudo apt-get source coreutils
		[sudo] password for liuchang: 
		Reading package lists... Done
		Building dependency tree       
		Reading state information... Done
		E: Could not open file 		/var/lib/apt/lists/extras.ubuntu.com_ubuntu_dists_lucid_main_source_Sources - 		open (2: No such file or directory)
		liuchang@ubuntu:~$ sudo apt-get source coreutils
		Reading package lists... Done
		Building dependency tree       
		Reading state information... Done
		E: Could not open file 		/var/lib/apt/lists/extras.ubuntu.com_ubuntu_dists_lucid_main_source_Sources - 		open (2: No such file or directory)


解决办法：
根据错误提示，应该是更新源 /etc/apt/source.list 文件中的某些路径不对，需要删除掉对应的更新源地址（如果更新源不再可用，那么apt-get update 就会有错误提示，同样，这里执行 apt-get source 也会出现问题）

根据上面的错误，应该是不存在extra.ubuntu.com_xxx，搜索发现/etc/apt/source.list文件中确实有这个更新源：

  		## This software is not part of Ubuntu, but is offered by third-party
  		## developers who want to ship their latest software.
  		deb http://extras.ubuntu.com/ubuntu lucid main
  		deb-src http://extras.ubuntu.com/ubuntu lucid main

**更进一步**

通过这个实例，发现错误的问题，实际上更新源地址，对应着会生成 /var/lib/apt/lists/XXXX 下面的文件，而 XXXX 文件的命名和更新源的地址是有关系的。比如这里的：

				extras.ubuntu.com_ubuntu_dists_lucid_main_source_Sources

表示的就是 

				http://extra.unbunut.com/ubuntu lucid main

因此，后续再碰到同样的问题，只需要查看更新源列表，删除不可用的地址即可。

