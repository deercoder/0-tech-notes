Tmux
====

1. 实际上是在后台运行, 并不是被kill掉,这样可以在不同的session中切换,而不用开多个窗口.
2. detach就是切换到后台运行,而attach则又会调出来对应的工作区,这样能够不断切换.如果kill掉的话才退出来.
3. 名称很重要,tmux是按照不同的名称来区分session的.

----------------------------

Basic command
===

1. `tmux ls`: 列出所有的tmux工作区
2. `tmux new -s basic`: 新建一个名称为basic的session
3. `ctrl + b d`: ctrl+b是组合键, d表示detach,即切换到后台运行(还在运行)
3. `tmux attach`: 如果只有一个工作区的话,该命令就是直接切换到前台,让这个唯一的工作区.
   如果有多个工作区的话, 则可以使用-t标记哪一个session, 如切换到名称为basic的session,就是
   `tmux attach -t basic`
4. `tmux kill-session -t basic`: 杀死名称为basic的tmux工作台,这样工作就停止了,相当于退出.

5. 多窗口(在一个session中创建多个窗口)

	* 新建一个窗口: `Ctlr + b c` (Ctrl+b表示就是tmux的prefix,后面同,唯一的标志), c即创建窗口
	* 重命名当前窗口: `Ctlr + b ,` (然后会弹出窗口,此时再输入名称即该窗口的名称)
	* 多个窗口之间的切换: `ctlr + b n`(切换到下一个窗口,next的意思), `ctrl + b p`(切换到前一个窗口,previous的意思).
		默认的,每一个窗口都有一个标记的数字,从0开始,我们可以通过 ctrl+b 数字来定位到某个具体的窗口
		比如: `ctrl + b 0` 表示切换到窗口0 , `ctrl + b 2` 表示切换到窗口2
		按照窗口名称来进行查找: `ctrl + b f` (然后会提示输入搜索名称,会将包含该名称的窗口以列表形式罗列)
		显示所有的窗口列表: `ctrl + b w`(显示出来窗口列表,可以移动方向键选择某个窗口)
	* 单窗口的分栏（多个panel，就像VIM的分屏）

      		+ `ctlr + b %` (竖直分屏，分成左右两屏)
      		+ `ctlr + b "` (水平分屏，分成上下两屏
	
	* 多栏之间的跳转：
   	 	+  `ctrl + b o`(在不同栏之间跳转)
    	 	+  `ctrl + b 方向键`（不同栏之间按照方向来跳转）
      		+  关闭某个栏： `ctrl + b x`(当然也可以在该shell中输入exit)

6. 命令模式。

	* ctrl + b : 进入到命令模式（其中冒号和VIM的命令模式很类似）
		比如，在命令模式下新建一个名为window的窗口：
    	* ctrl + b: (进入到命令模式)
    		new-window -n window (new-window就是创建窗口的命令，-n标志该窗口的名称)
		再举一个例子，新建一个窗口并且马上执行top命令：
    	* ctrl + b:
    		new-window -n processes "top" (注意这种创建窗口并执行一个程序的方式，当q退出的时候，窗口随之消失
    		当然了，也可以设置不退出，但是需要配置相应的tmux的设置)
	* prefix + l: 跳转到上一个窗口(比如之前从3跳到0, 现在又跳回到0)
	* prefix + ?: 帮助文档,可以查看对应的快捷键.



7. 获取帮助： ctrl + b ?（获取帮助文档）

	Command                                     Description

	`tmux new-session`:                         Creates a new session without a name.Can be shortened to tmux new or simply tmux.

	`tmux new -s development`                   Creates a new session called “development.”

	`tmux new -s development -n editor`         Creates a session named “development” and names the first window “editor.”

	`tmux attach -t development`                Attaches to a session named “development.”

----------------------------------------------------------------------------------------------------------------

## Default Commands for Sessions, Windows, and Panes

Command                                      Description

`PREFIX d`                                    Detaches from the session, leaving the session running in the background.

`PREFIX :`                                    Enters Command mode.

`PREFIX c`                                    Creates a new window from within an existing tmux session.  Shortcut for new-window.

`PREFIX 0 ... 9`                              Selects windows by number.

`PREFIX w`                                    Displays a selectable list of windows in the current session.

`PREFIX ,`                                    Displays a prompt to rename a window.

`PREFIX &`                                    Closes the current window after prompting for confirmation.

`PREFIX %`                                    Divides the current window in half vertically.

`PREFIX "`                                    Divides the current window in half horizontally.

-----------------------------------------------------------------------------------------------------------------

## Default command

Command                                      Description

`PREFIX o`                                     Cycles through open panes.

`PREFIX q`                                     Momentarily displays pane numbers in each pane.

`PREFIX x`                                     Closes the current pane after prompting for confirmation.

`PREFIX SPACE`                                 Cycles through the various pane layouts.

-----------------------------------------------------------------------------------------------------------------

## 复习命令：

`tmux new -s basic -n test -d` : 创建一个名为basic的session，并在该session中创建窗口，名为test，然后detach掉。


##  配置Tmux

1. 映射Cap键为Ctrl键, 在系统中设置, system - preference - keyboard - layout - ctrl keyboard

2. 将prefix设置为`Ctrl+a`: `set -g prefix C-a` (-g 表示全局生效)

3. `set window-option = setw`

4. 设置重新载入配置文件的:

   		bind r source-file ~/.tmux.conf

   这里bind就是进行按键的绑定,注意使用的时候,都要加上prefix,即prefix + r之后,才会执行对应的命令.
   并且在这里第一次重新载入时,由于还没有生效,所以要先prefix+:进入命令行中source-file一下,才能
   让其生效,prefix+r生效.

   另外,如果要加上提示信息的话,可以使用display函数,bind的时候如果想执行多条命令,直接使用 \; 来
   连接多条命令.如:

   		bind r source-file ~/.tmux.conf \; display "Configuration Reloaded!"

   注意,使用-n选项表示不使用前缀,这种绑定直接进行功能的绑定:

   		bind-key -n C-r source-file ~/.tmux.conf

   这种方式的话会使得Ctrl+r直接重新载入配置(不需要prefix,不过也造成应用程序的ctrl+r键被屏蔽掉)

5. 由于将ctrl-a映射为prefix,造成vim,bash中的ctrl+a不能用,为了让这些程序能用,即可以发送这些命令到对应的程序中,使用`send-prefix`,这里同样定义ctrl+a



-------------------------------------

## FAQ:

1. tmux每次启动一个新的窗口或者panel的时候都要输入密码.  问题比较奇怪,在家中电脑不会有这个问题.(11.04),不过现在10.04有这个问题. (未修改任何配置文件.)

	**解决办法:**
	修改`/dev/ptmx`的权限,修改为777即可. sudo chmod 777 /dev/ptmx (此修改办法有时候可能无效)
	另外,修改貌似不会马上生效,过一段时间退出tmux后再进入才可以.

	**问题原因已经找到:**
	原因是自己新建了一个.bash_profile文件,并且在里面sudo mount了若干个磁盘,这样结果就是每次用tmux来新建一个中终端的时候,相当于都会
	执行一下这个环境变量, 而由于sudo需要输入密码, 所以就造成tmux中新建窗口都有问题.
	那为何直接新建一个终端不会提示呢?
	因为terminal中配置了每次都不适login shell, 这样就相当于不需要每次开一个终端就login一下, 新建一个环境, 从而就不需要输入相应的密码.

	**解决办法:**
	在shell中新建一个变量, 进行判断,如果第一次启动就sudo mount一下, 然后修改它的值,等到下次在初始化环境的时候发现此变量已修改,不满足
	条件则不再sudo mount, 从而不再需要输入密码.
	(当然也可以看看tmux中是否有配置可以不再作为login shell登录,这样每次启动就不用输入密码等判断, 就像原来的terminal一样.)
	
	**寻找过程:**
	在网上寻找未果,后来发现奇怪的现象是并没有在/etc/fstab/中初始化相应的磁盘, 没有挂载网络磁盘,如何挂载,在bashrc中也没有相关的描述,因此
	想到可能是其他初始化配置有影响,找到之后,发现mount是正确的,但是感觉好像每次都重复mount几次, 查看/etc/mtab,发现后面惊人的每次都重复mount
	了网络磁盘, 本着节约的角度, 删除这个配置,OK.
	然后试试tmux新建一个窗口, 发现没有再提示了(因为也就只有tmux新建窗口的时候mount了,没有启动其他终端的.)

2. to be continued...

