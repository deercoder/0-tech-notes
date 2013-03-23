Markdown Syntax:


1.Phrase Emphasis 斜体与加粗

*italic*   **bold**
_italic_   __bold__

2.Links 超链接

方法1 Inline:
An [example](http://url.com/ "Title")

方法2 Reference-style labels (titles are optional):
An [example][id]

Then, anywhere else in the doc, define the link:
[id]: http://example.com/  "Title"

3.Images 插入图片

方法1 Inline (titles are optional):
![alt text](/path/img.jpg "Title")

方法2 Reference-style:
![alt text][id]

[id]: /url/to/img.jpg "Title"

4.Headers 标题

方法1 Setext-style:
Header 1
========

Header 2
--------

方法2 atx-style (closing #'s are optional):
# Header 1 #

## Header 2 ##

###### Header 6

5.Lists 列表

有序列表 Ordered, without paragraphs:
1.  Foo
2.  Bar

无序列表 Unordered, with paragraphs:
*   A list item.

    With multiple paragraphs.

*   Bar

You can nest them:
*   Abacus
    * answer
*   Bubbles
    1.  bunk
    2.  bupkis
        * BELITTLER
    3. burper
*   Cunning

6.Blockquotes 块引用

> Email-style angle brackets
> are used for blockquotes.

> > And, they can be nested.

> #### Headers in blockquotes
> 
> * You can quote a list.
> * Etc.

7.Code Spans 代码段

`<code>` spans are delimited by backticks.

You can include literal backticks
like `` `this` ``.

Preformatted Code Blocks

Indent every line of a code block by at least 4 spaces or 1 tab.
This is a normal paragraph.

    This is a preformatted
    code block.

8.Horizontal Rules 水平分割线

Three or more dashes or asterisks:
---

* * *

- - - - 

9.Manual Line Breaks 换行

End a line with two or more spaces:
Roses are red,   
Violets are blue.
