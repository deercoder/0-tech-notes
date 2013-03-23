旧文博客回忆
============

## VIM 学习笔记(一)
1. Type  0  (zero) to move to the start of the line.
 Type  2w  to move the cursor two words forward.
 Type  3e  to move the cursor to the end of the third word forward.

2. Type  x  to delete the first unwanted character.
 Type  rx  to replace the character at the cursor with  x

3. To change until the end of a word, type  ce (ce + 修正的单词)

4. C就类似于d。de,dw,d$都对应着ce,cw,c$

5. Type CTRL-G to show your location in the file and the file status.
     Type  G  to move to a line in the file.

6. Press  G  to move you to the bottom of the file.
     Type  gg  to move you to the start of the file.

7. Type  /  followed by a phrase to search for the phrase.

8. To search for the same phrase again, simply type  n .
     To search for the same phrase in the opposite direction, type  N

9. To search for a phrase in the backward direction, use  ?  instead of  /

10. To go back to where you came from press  CTRL-O

11. 匹配使用%，放置在一个括号下面，然后输入%，就会跳转到另外一个上面。

12.  type   :#,#s/old/new/g    where #,# are the line numbers of the range
                               of lines where the substitution is to be done. （两行之间的所有文本）
     Type   :%s/old/new/g      to change every occurrence in the whole file.（不提示，但是是整个文件）
     Type   :%s/old/new/gc     to find every occurrence in the whole file,
                               with a prompt whether to substitute or not.（提示是否代替）

13.g表示取代该行所有的。
 比如:s/thee/the/g表示取代该行中所有的thee为the。

14. CTRL-G  displays your location in the file and the file status.
             G  moves to the end of the file.
     number  G  moves to that line number.
            gg  moves to the first line.


15. ：！ 运行执行外部程序。（冒号是必须的，命令模式都必须的，比如：w表示保存） (外部命令如ls，pwd需要使用！，而内部命令则是直接：w等等，不需要使用！)

16. 输入v进入视觉模式，此时鼠标向下会选中部分文字，然后可以对选中的文字操作。
比如：w TEST则会把选中的保存位文本。
:d则会删除选中的文本。

17. 插入一个文件的部分内容，使用：r FILENAME即可插入一个文件到该行。

18. 在下方新建一个空行，使用o，
 在上方新建一个空行，使用O。（命令模式下）    （输入命令后会进入插入模式）

NOTE:  a, i and A all go to the same Insert mode, the only difference is where
       the characters are inserted.（a是在光标后，A是在行末尾，i则是光标处）

19. e跳转一个单词。e.g: 2e表示跳转两个单词，比向右键更快捷。
    G跳转行。e.g: 721G表示跳转到第721行


20. 替换：
R：替换位多个字母
r：替换位单个字母

21. Move the cursor to the end of the next line:  j$


22. Use the  y  operator to copy text and  p  to paste it

NOTE: you can also use  y  as an operator;  yw  yanks one word.


23. Set the 'ic' (Ignore case) option by entering:   :set ic（包含大小写匹配的都显示出来，比如Ignore，IGNORE）
    Set the 'hlsearch' and 'incsearch' options:  :set hls is（高亮显示）


（set option）
24. Typing ":set xxx" sets the option "xxx".  Some options are:
        'ic' 'ignorecase'       ignore upper/lower case when searching
        'is' 'incsearch'        show partial matches for a search phrase
        'hls' 'hlsearch'        highlight all matching phrases
     You can either use the long or the short option name.

25. Prepend "no" to switch an option off:   :set noic


26. 在命令模式下，输入e然后按TAB键，会自动出现很多相关的命令（以e开头的命令）。（第一个相关的）
按Ctrl + D能够出现所有以他开头的命令。


## VIM学习笔记（二）


在前面一篇blog（Vim学习笔记）中介绍VIM的使用用法后，该文章达到了历史性的最高访问量。在上面的那篇文章中，介绍了VIM的基本用法，基本上是个人在联系Vimtutor这个教程之后对不熟悉的指令的总结。但是，随着学习的深入，发现掌握这些基本的命令还远远不够，虽然网上有大批的资料可以下载学习，但是迫于没有一种类似于入门级别的教程，所以还是希望有相关的从最常用最基本的知识讲起的教程。目前看来，《Learn Vim Progressively》这篇文章应该是比较好的入门级教材了吧，而酷壳则进行了翻译，网址在这里简明 Vim 练级攻略（http://coolshell.cn/articles/5426.html）。以下是我的学习笔记：

1. 插入：
a: 在光标之后插入
o: 在当前行后面插入一个新行
O: 在当前行前面插入一个新行
cw: 替换从光标到后一个单词结尾的字符。

2. 移动：

0: 移动到行头
^: 到本行第一个不是blank的字符。（blank字符即空格，tab，换行和回车）
$: 到本行行尾
g_: 到本行最后一个不是blank字符的位置
/pattern: 搜索pattern的字符串。（搜索多个按n回到下一个）

3. 拷贝：

P：在当前位置之前拷贝（将缓冲区内的内容拷贝过来）
p: 在当前位置之后拷贝
yy: 拷贝当前行。(在某行使用之后，相当于拷贝了该行，然后到指定位置，使用P命令粘贴到指定的位置)


4.Undo/Redo

u : undo
Ctrl + r : redo

5. 打开保存
e<path/file> : 打开一个文件
w: 保存
saveas<path/file>: 另存为某个地方
x,wq: 保存（x表示仅需要保存时保存，wq则是保存）
ZZ：不需要输入前面的冒号即可保存，此时会退出。（不同于前面的冒号+回车）
bn, bp: 同时打开多个文件的话，使用这个来切换到上一个或者下一个文件。

6. 更好
.: 输入一个点号会重复执行上次的命令
N<command>: 重复执行command命令N次。(比如2dd表示删除两行，3p表示粘贴三次)

7. 更强
NG: 到第N行（比如3G，表示跳转到第三行）另外可以使用:137跳转到137行（感觉更方便）
gg: 跳转到第一行(相当于1G，或者:1)
G: 跳转到最后一行
单词的移动：
w： 到下一个单词的开始
e： 到下一个单词的结尾
（如果认为分号也是一个单词的话，使用E/W）
比如：x = (name_1, vision_3); 后面的这个分号就要注意。

%: 匹配括号，先移动光标到一个括号处，然后在命令模式下输入%，即可跳转到匹配的括号。
*：匹配光标到当前所在的单词。（向下匹配）(匹配就是知道相同的单词，比如在当前行有5个单词test，那么按*就会寻找并跳转到下一个单词test的起始之处)
#：匹配光标到当前所在单词（向上匹配）


8. 更快
一定要记住光标的移动。
eg：0y$：现跳转到第一行，然后拷贝，拷贝到行末，
类似的，ye：开始拷贝，拷贝到笨蛋次的最后一个（e其实就是end）
y2/foo：拷贝两个foo直接的字符串（这种用法很奇特，前面没有讲到）

还有很多时间并不一定你就一定要按y才会拷贝，下面的命令也会被拷贝：
d (删除 )
v (可视化的选择)
gU (变大写)
gu (变小写)
等等

9.Vim超能力
fa: 到下一个为a的字符处。同理，fs到下一个为s的字符处
t,：到逗号前的第一个字符处。同理，ta就是到a前的第一个字符出。
3fa：在当前行查找第三个出现的a
F和T：作用和f与t一样，只是相反的方向。
dt": 删除所有的内容，知道遇到了双引号，类似的可以换成其他的如dt+任意字符。

==========================以下内容为以前没接触的，重点回顾===================
1. 区域选择
<action>a<object> or <action>i<object>
<action> 可以是任何命令，如d（删除）,y(拷贝)，v(可视化模式选择).
<object>可以是：w表示一个单词，s表示一个句子，p一个段落。也可以是特殊字符比如）,}等等。

对于(map (+)("foo")),光标在第一个o的位置。
则：vi" ----对应的是<action>i<object>这种情况，v表示模式选择，然后i表示的是不包括这个特殊字符，所以是从第一个o所在的包含在"符号中的。
其他的类似，不同的是a是要包括内容的。
        vi" → 会选择 foo.
        va" → 会选择 "foo".
        vi) → 会选择 "foo".
        va) → 会选择("foo").
        v2i) → 会选择 map (+) ("foo")
        v2a) → 会选择 (map (+) ("foo"))


块操作
块操作，典型的操作： 0 <C-v> <C-d> I-- [ESC]
Windows下面是Ctrl+q而不是Ctrl+v开始块操作。
做法是：
1. 先移动光标到某个地方。
2. Ctrl+V开始块操作。
3. 选择块的范围（此时可以用hjkl，或者%，或者Ctrl+d等等）
4. I-- Esc（选择对应的操作，这里是插入ii，所以现I表示插入，然后--，但是这样只是对最开始的那个起作用，要应用到所有的块，需要使用Esc键）

自动提示<Ctrl+n> <Ctrl+p>
所谓的自动提示：实际上是Vim对用户近期输入的单词进行统计记忆的结果，它的这个自动提示，是当你近期输入某个单词后，再次输入的时候，如果输入首单词，使用该快捷键就能匹配相应单词，从而自动补全。
如输入下面的两个单词：
LaTeX
XeLaText
然后在输入下面的这个，只输入首单词，在利用C+n组合，就会自动补齐。
XeLaText LaTeX

宏录制：
qa把你的操作记录在寄存器a内
然后@a就会重复这个被记录的宏
@@用来重复自己的一个宏（要指定某一个特定的就要用@xx，其中xx即前面保存的名）

qaYp<C-a>q→
        qa 开始录制
        Yp 复制行.
        <C-a> 增加1.
        q 停止录制.
    @a → 在1下面写下 2
    @@ → 在2 正面写下3
    现在做 100@@ 会创建新的100行，并把数据增加到 103.


可视化选择v，V，Ctrl+V（这个在前面有讲到）
首先的工作自然是使用这个工具来选择了，随便哪一种都可以。
其次选择后就是对该模块进行操作，编辑了。可以有
J : 把所有行都连接起来
< or > : 左右缩进
=：自动完成缩进（原始动画中就是这个效果，看了半天发现缩进变化了）

如何在所有选中行的末尾都加入一个东东呢？
就和在前面加入--的那个例子一样，先选中模块，然后跳到末尾$,然后加入的话是A，加入某个就是输入字符串了，应用到所有模块的部分就是按下Esc即可。


分屏split和vsplit
:split: 创建分配（vsplit则是创建垂直分屏）
C-w<Direction>： Direction可以是hjkl或者方向键，用来不同屏幕切换
C-w_或者C-w|: 用来最大化尺寸。
C-w+或者C-w-: 增加尺寸。

分屏的使用：
1.使用大写的O参数来垂直分屏。vim -On file1 file2
2. 使用小写的o参数来水平分屏。 vim -on file1 file2
3. 上下分割，并打开一个新文件。 :sp filename
4. 左右分割，并打开一个新文件。 :vsp filename
5. 屏幕之间的移动：Ctrl + W + (h, j, k, l)(不同参数表示移动的方向)
   比如Ctrl + W + h表示向左边的屏幕移动。
6. 屏幕尺寸的变化。
   Ctrl + W + : 表示增加高度。
   Ctrl + W - : 表示减少高度
   Ctrl + w = : 使得所有的屏幕有相同的高度
7. 具体的更加详细的内容见help文档或者http://coolshell.cn/articles/1679.html
   (注，酷壳上的部分命令可能由于版本原因已失效，应该有新的快捷键代替)

VIM还有更多的功能需要学习，关键是在使用中不断加深练习，还有强大的扩展插件，另外在浏览器中也有相应的扩展，可谓功能强大。后续会继续学习，并做好笔记以及时总结学习所得。
