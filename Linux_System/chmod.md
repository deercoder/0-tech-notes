Chmod用法
====

chmod is used for changing the privilege of the folder, here we could use it to change the group, other, owner, and all privilege.

For example,

	chmod g+x cliu   //add x permission for group users for the cliu folder
	chmod o+x cliu  //add x permission for other users.
	chmod g-x cliu  //remove x permission for group users.

**Note**: Use a proper permission control for your own folders, for group and other users, remove their rwx permission.

###Reference

1. chmod abc file
其中a,b,c各为一个数字，分别表示User、Group、及Other的权限。

	r=4，w=2，x=1
	若要rwx属性则4+2+1=7；
	若要rw-属性则4+2=6；
	若要r-x属性则4+1=5。

2. 另一种是chmod后边加字母，后接文件名
综上所述，当想用chmod命令来改变权限时，文件的用户身份主要有如下几类：

		u：拥有文件的用户（所有者）；
		g：所有者所在的组群；
		o：其他人（不是所有者或所有者的组群）；
		a：每个人或全部（u、g、和o）。
用户所具有的文件访问权限类型如下：
	
		r：读取权；
		w：写入权；
		x：执行权。
文件权限配置行为有如下几类：

		+：添加权限；
		-：删除权限；
		=：使它成为惟一权限。

