*markdown*

This is a program

&copy;

AT&T

AT&amp;T

***
<h1 id ='p1'> test </h1>
<h2 id = 'p2'> test11 </h2>
<h3 id = 'p3'> test22 </h3>

*这两个比较特殊，可以用数字键1前面的那个~/`对应的按键来显示*

`&` `<` 

Setext形式可以设置顶级标题，分别使用=和-来设置，而且不管多少个数量

This is the first paragraph
================


这是第二个标题
---

Atx形式也可以设置顶级标题，使用#，数量从1到6分别表示1到6级标题
# 1
## 2
### 3
#### 4
##### 5
###### 6

> 在每行的开头加入`>`就可以作为一个引言，类似于email中的引用形式一样。
> This is quotation

> 也可以在整个段落的第一行加入引言，后面都不用加，然后下面觉得就是冗余的，
冗冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余余
冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余冗余


冗余冗余
===

> 区块也又可以有层次关系，只需要在里面定义层级关系即可，即多加几个标记符
>> 下面就是有层级关系的，多加了一个`>`

引言内的区块也可以以加标记，比如加上`#`
> ##This is a paragraph 

> 引言内部，是可以就加入各种标记的，如上面的标题，还有序列

> 1. 序列1
> 2. 序列2

列表就是值得List，无序的列表可以用*,+, -来使用，效果是一样的。

* test1
* test2
* test3

分开来才不会有影响

+ test1
+ test2
+ test3

分开来才不会有影响

- test1
- test2
- test3


有序的列表则使用英文的点号，注意点号前面的数字倒是无所谓的
1. 有序1
2. 有序2
3. 有序3

下面开始新的测试

* bird
* test

对比测试(这里加入了空行的处理
)

* bird

* test

* This is a list in the paragraph, however I want to connect to the internet but it cannot work well. This will automatically align to the left of the side of left

* This is great, whatever you do

there is an enter space

1. 列表可以包含有多个段落的时候，但是下面的段落必须要首行空一个制表符或者4个空格

	该段前面有一个制表符

    该段前面有4个空格（注意另起一段的话需要有一行空白）

下面是一个例子，上面的list结束。

   *     每行都有缩进当然非常好，这样更美观
         这里有缩进，另起一段的话缩进是非常不错的，这样可以更加美观，
   不过如果你懒得做，也是可以的
	
   *     这样也是可以的
   
如果列表项中要放入引用，则`>`也需要缩进

    * This is a list item

	> This is a list reference1
	> This is a list reference2
	> This is a list reference3

-----------------------------------
    *   A list item with a blockquote:

        > This is a blockquote
        > inside a list item.

一个列表项中，要加入代码块（2个制表符或者8个空格）

        *  This is a list item
		#include <iostream>
		int main(){
		   return 0;
		}

当然，项目列表很可能会不小心产生，像是下面这样的写法：

    1986. What a great season.

换句话说，也就是在行首出现*数字-句点-空白*，要避免这样的状况，你可以在句点前面加上反斜杠。

    1986\. What a great season.

---------------------------------------
下面的项目列表中：

1. test1

1986.test2

实际想要的效果是：

	1. test1

	1986\.test2


要在 Markdown 中建立代码区块很简单，只要简单地缩进 4 个空格或是 1 个制表符就可以，例如，下面的输入：

    这是一个普通段落：

        这是一个代码区块。


	Here is an example of AppleScript:

        tell application "Foo"
            beep
        end tell

	很方便的插入HTML代码
  <div class="footer">
            &copy; 2004 Foo Corporation
        </div>

	几种分割线

* * *

***

*****

- - -

---------------------------------------

	注意的是行首有4个空格或者一个制表符的情况，貌似显示是不一样的，原因未明

注意的是行首有4个空格或者一个制表符的情况，貌似显示是不一样的，原因未明

---------------------------------------
# 链接

	1. 行内链接
	2. 参考式链接

## 行内式

	下面这个是一个链接[link](www.baidu.com, "百度")
下面这个是一个链接[百度](www.baidu.com, "百度")

This is [an example](http://example.com/ "Title") inline link.

[This link](http://example.net/) has no title attribute.

<p>This is <a href="http://example.com/" title="Title">
    an example</a> inline link.</p>

<p><a href="http://example.net/">This link</a> has no
    title attribute.</p>

See my [About](/about/) page for details.   

*参考式*的链接是在链接文字的括号后面再接上另一个方括号，而在第二个方括号里面要填入用以辨识链接的标记：
This is [an example][id] reference-style link.

 *single asterisks* 

_single underscores_

  **double asterisks**

__double underscores__

  Use the `printf()` function.

   **两边都有空格的话就悲剧啦**

<code>
  #include <iostream>
  using namespace std;
  int main(){
     return 0;
  }
</code>

<h3 id="img">图片</h3>
#### 行内式
![图片](path/to/test.jpg "test")





















[id]: http://example.com/  "Optional Title Here"
