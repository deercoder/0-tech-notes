[Kylexlau's Weblog](http://kyle.xlau.org/)
-   [Home](http://kyle.xlau.org/)
-   [Archive](http://kyle.xlau.org/archive.html)
-   [Categories](http://kyle.xlau.org/categories.html)
-   [Sitemap](http://kyle.xlau.org/sitemap.html)
-   [About](http://kyle.xlau.org/about.html)

-   [Subscribe](http://kyle.xlau.org/atom.xml)

# [像黑客一样写博客](http://kyle.xlau.org/posts/blogging-like-a-hacker.html)

August 13, 2009
用Jekyll来重建我博客。先翻译一篇Jekyll作者的文章。原文没有脚注，我加这些脚注只是因为Textile添加脚注很方便。

[原文地址](http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html)
和
[原文源代码](http://github.com/mojombo/tpw/raw/03fa4247b2f4ba620661d9025c336f167aa11ba2/_posts/2008-11-17-blogging-like-a-hacker.textile)

## 译文：

2000年时，我以为我将成为一个专业作家。于是我跟其他一些有抱负的诗人和作家一起，每天花几个小时在LiveJournal^[1](#fn1)^上
练习写作。从那时起，我已经先后在三个不同的域名下写过博客。我写过的博客内容包括：web标准、印刷设计（print
design）、摄影、Flash、插图（illustration）、信息架构、ColdFusion、软件包管理（package
management）、PHP、CSS、广告、Ruby、Rails、Erlang。

我热爱写作。我喜欢与别人分享我的思想。将想法转变成文字，能非常有效地深化对某一话题的思考。但虽然我很喜欢写博客，我却陷入了一个循环，放弃一段，又继续开始。在这次又重新开始写博客前，我做了一些反省，试图找到造成这种恶性循环的原因是什么。

我已经知道什么是我不想要的。我厌倦了那些复杂的博客管理系统，如WordPress和Mephisto。我只想写些好文章，而不是整天修改页面模板，审核评论，升级博客系统。Posterous^[2](#fn2)^看起来不错，但我想控制自己博客的样式，选择自己的独立域名。基于同样的理由，其他一些提供博客服务的站点，如wordpress.com和blogger.com，均不符合我的要求。有些人直接用GitHub^[3](#fn3)^写博客，这很酷，但不符我的口味。

2008年10月19日，星期六，我坐在旧金山的公寓里，手拿一杯苹果汁，头脑清醒。经过一阵沉思，我有了个好注意。我不是一个专业的散文作家，我是个专业程序员。如果我以软件开发的角度看待写博客，那将会是什么样子的？

首先，所有我的作品都将保存在一个Git^[4](#fn4)^仓库
里。这让确保我可以在我偏爱的文本编辑器和命令行下，舒服地尝试各种想法的写作，浏览已写文章。我将可以用一个简单的部署脚本或者是提交后钩子
（post-commit
hook）发布文章。为保持最小的复杂性，相对一个需要不断维护的动态网站，静态网站更好。我的博客必须容易自定义。我的美工（graphic
design）背景让我喜欢经常调整网站的外观和布局。

在过去的几个月里，我写了Jekyll来实现这些概念。Jekyll是一个简单的，适合博客的（blog
aware），静态网站生成器。输入一个模板目录（代表网站的原始形态），经过Texitile^[5](#fn5)^和Liquid^[6](#fn6)^转换，输出一个完全静态的网站。如果你在我的网站上阅读本文，你看到的就是一个用Jekyll生成的博客网站（译者的网站也是）。

想理解这究竟是如何工作的，在新窗口打开我的 [TPW](http://github.com/mojombo/tpw)
Git仓库。我将参照那里的代码来解释。

首先看
[index.html](http://github.com/mojombo/tpw/tree/master/index.html).
这是网站的首页。此文件的最上面几行是一段包含文件元数据的YAML^[7](#fn7)^代码。这些元数据告诉Jekyll，此文件该使用什么模板，页面的标题该是什么，等等。此文件里，我指定使用default模板。模板文件都在
[\_layouts](http://github.com/mojombo/tpw/tree/master/_layouts)
文件夹里。如果你打开
[default.html](http://github.com/mojombo/tpw/tree/master/_layouts/default.html)
文件，将看到主页是由index.html包裹在此模板中而生成的。

你同样将注意到这些文件里有Liquid模版引擎代码。Liquid是一种简单的，可扩展的模版语言，它令数据更容易嵌入到模版里。我希望在我的主页上显示我的文章列表。Jekyll生成一个散列表（Hash),包含关于我网站的各种数据。`site.posts`是我所有博客文章的一个按时间由近及远顺序的列表。每篇文章，又包含几个字段，如标题（title）和时间（date）。

Jekyll解析（parsing）在\_posts目录中的文件，以获取博客文章的列表。每篇文章文件标题里包括有，最终生成静态HTML文件的发布日期和略缩名（slug，出现在URL中的名字）。打开本文的源码，
[2008-11-17-blogging-like-a-hacker.textile](http://github.com/mojombo/tpw/tree/master/_posts/2008-11-17-blogging-like-a-hacker.textile).
GitHub默认会转换textile文件，为了更好的理解，请打开文件的
[原始形式](http://github.com/mojombo/tpw/tree/master/_posts/2008-11-17-blogging-like-a-hacker.textile?raw=true).
文件里我指定了使用`post`模版。如果你打开
[post.html](http://github.com/mojombo/tpw/blob/03fa4247b2f4ba620661d9025c336f167aa11ba2/_layouts/post.html)
文件，会发现这里有一个嵌套模版的例子。模版里可以包含其他模版，这使你有更大的灵活性去指定页面显示。我用嵌套模版，是为了显示相关文章。

Jekyll用一种特殊的方式处理文章源文件。文件名中指定的日期用来构造生成网站的URL。比如这篇文章，最后生成的URl地址是`http://tom.preston-werner.com/2008/11/17/blogging-like-a-hacker.html`。

非下划线开头的目录中的文件，将直接复制到生成网站中的对应目录。如果一个文件不是以YAML代码段开头，Liquid解释器将略过它。二进制文件也将直接复制。

为了将你的原始网站转换到静态网页版本，只需在命令行中输入：

    $ jekyll /path/to/raw/site /path/to/place/generated/site

Jekyll仍然是一个非常年轻的项目。我仅仅开发出我所需要的那些功能。我希望这个项目能慢慢成熟起来，支持更多的功能。如果你用Jekyll搭
建了你的博客，请发邮件告诉我，在Jekyll未来的版本里你需要些什么功能。更好的方法是，在GitHub上克隆（fork）这个项目，然后修改
（hack），加上你自己需要的功能。

我已经使用Jekyll超过1个月了。我爱它。非常有益的是，驱使我开发Jekyll的动力源自我自己博客的需要。我能在TextMate^[8](#fn8)^里编辑我的文章，它支持自动拼写检查。我能随时修改CSS和页面模版。所有东西备份在GitHub上。写这篇文章时，我感觉很轻松。系统简单到我能控制整个的转换过程。我脑海和我博客间的距离缩短了。我想它会让我成为一个更好的博客作者。

## Footnotes：

^1^ [LiveJournal](http://en.wikipedia.org/wiki/Livejournal)
一个提供博客服务的网站，中国长城之外。

^2^ [http://posterous.com/](http://posterous.com/)
一个用Email发布博客的网站。

^3^ [GitHub](http://en.wikipedia.org/wiki/Github)
一个提供Git托管服务的网站。本文作者是github创始人之一。

^4^ [Git](http://en.wikipedia.org/wiki/Git_(software)) Linus
Torvalds写的分布式版本管理系统，用与管理Linux的开发。

^5^
[Textile](http://en.wikipedia.org/wiki/Textile_(markup_language))
一种语法比HTML简单的标记语言，最后转换成HTML。

^6^ [Liquid](http://www.liquidmarkup.org/) Ruby的一个模版引擎库（
[Template Engine](http://en.wikipedia.org/wiki/Template_engine_(web))
）。

^7^ [YAML](http://en.wikipedia.org/wiki/Yaml)
是一个几乎所有编程语言都支持的易读的数据序列化（
[Serialization](http://en.wikipedia.org/wiki/Serialization) )标准。

^8^ [TextMate](http://en.wikipedia.org/wiki/Textmate) Mac
OS下一个文本编辑器。Ruby开发者们最爱，快捷键类似Emacs。

`--EOF--`

## Random Posts

-   13 Apr 2012 »
    [Linux 下使用 Sar 简介](http://kyle.xlau.org/posts/linux-sar.html)
-   26 Mar 2012 »
    [PL/SQL 代码规范](http://kyle.xlau.org/posts/plsql-style.html)
-   15 Mar 2012 »
    [最近读过和要读的书](http://kyle.xlau.org/posts/recent-books.html)
-   14 Mar 2012 »
    [Oracle 数据库整理表碎片](http://kyle.xlau.org/posts/table-fragmentation.html)
-   13 Mar 2012 »
    [JavaScript 基本概念](http://kyle.xlau.org/posts/js-basic.html)

![DISQUS](data:image/png;base64,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)![...](data:image/gif;base64,R0lGODlhEAALAPQAAP///z2LqeLt8dvp7u7090GNqz2LqV+fuJ/F1IW2ycrf51aatHWswaXJ14i4ys3h6FmctUCMqniuw+vz9eHs8fb5+meku+Tu8vT4+cfd5bbT3tbm7PH2+AAAAAAAAAAAACH/C05FVFNDQVBFMi4wAwEAAAAh/hpDcmVhdGVkIHdpdGggYWpheGxvYWQuaW5mbwAh+QQJCwAAACwAAAAAEAALAAAFLSAgjmRpnqSgCuLKAq5AEIM4zDVw03ve27ifDgfkEYe04kDIDC5zrtYKRa2WQgAh+QQJCwAAACwAAAAAEAALAAAFJGBhGAVgnqhpHIeRvsDawqns0qeN5+y967tYLyicBYE7EYkYAgAh+QQJCwAAACwAAAAAEAALAAAFNiAgjothLOOIJAkiGgxjpGKiKMkbz7SN6zIawJcDwIK9W/HISxGBzdHTuBNOmcJVCyoUlk7CEAAh+QQJCwAAACwAAAAAEAALAAAFNSAgjqQIRRFUAo3jNGIkSdHqPI8Tz3V55zuaDacDyIQ+YrBH+hWPzJFzOQQaeavWi7oqnVIhACH5BAkLAAAALAAAAAAQAAsAAAUyICCOZGme1rJY5kRRk7hI0mJSVUXJtF3iOl7tltsBZsNfUegjAY3I5sgFY55KqdX1GgIAIfkECQsAAAAsAAAAABAACwAABTcgII5kaZ4kcV2EqLJipmnZhWGXaOOitm2aXQ4g7P2Ct2ER4AMul00kj5g0Al8tADY2y6C+4FIIACH5BAkLAAAALAAAAAAQAAsAAAUvICCOZGme5ERRk6iy7qpyHCVStA3gNa/7txxwlwv2isSacYUc+l4tADQGQ1mvpBAAIfkECQsAAAAsAAAAABAACwAABS8gII5kaZ7kRFGTqLLuqnIcJVK0DeA1r/u3HHCXC/aKxJpxhRz6Xi0ANAZDWa+kEAA7AAAAAAAAAAAA)
-   [0](#)
    #### Notifications

    -   You have no messages

    You've received a new rank!

-   [](# "Expand Community Box")
-   [Disqus](#)
    -   [Dashboard](#)
    -   [Edit Profile](#)
    -   [Logout](http://disqus.com/logout/?ctkn=e57672d57b89a63e7f17e71aae544c56)
    -   [About Disqus](http://disqus.com/)


-   [Like](# "I like this page")
-   [Dislike](# "I don't like this page")
-   -   1 person liked this.


### Glad you liked it. Would you like to share?

Facebook

Twitter

-   [Share](#)
-   [No thanks](#)

Sharing this page …

Thanks! [Close](#)

[Logout](http://disqus.com/logout/?ctkn=e57672d57b89a63e7f17e71aae544c56)
### Add New Comment

[![deercoder](blogging-like-a-hacker_files/noavatar92.png)](#)
-   Post as deercoder
-   Image
-  

Sort by popular now Sort by best rating Sort by newest first Sort
by oldest first
### Showing 0 comments

[M *Subscribe by email*](#)
[S *RSS*](http://xlau.disqus.com/thread_42/latest.rss)
Please enable JavaScript to view the
[comments powered by Disqus.](http://disqus.com/?ref_noscript)
Powered by [Jekyll](https://github.com/mojombo/jekyll) and
[Bootstrap](http://twitter.github.com/bootstrap/). Last updated at
Fri Apr 13 08:32:49 -0700 2012.


