什么才算是真正的编程能力?
====




著作权归作者所有。
商业转载请联系作者获得授权，非商业转载请注明出处。
作者：刘贺
链接：http://www.zhihu.com/question/31034164/answer/50423838
来源：知乎

非常好的一个问题。这可能是我在知乎见到过的问编程有关的问题中问得最好的一个了。我非常喜欢这个问题。

计算机科学有两类根本问题。一类是理论：算法，数据结构，复杂度，机器学习，模式识别，等等等。一类是系统：操作系统，网络系统，分布式系统，存储系统，游戏引擎，等等等等。

理论走的是深度，是在追问在给定的计算能力约束下如何把一个问题解决得更快更好。而系统走的是广度，是在追问对于一个现实的需求如何在众多的技术中设计出最多快好省的技术组合。

搞ACM的人，只练第一类。像你这样的更偏向于第二类。其实挺难得的，但很可惜的是第二类能力没有简单高效的测量考察方法，不像算法和数据结构有ACM竞赛，所以很多系统的苗子都因为缺少激励和正确引导慢慢就消隐了。

所以比尔盖茨才会说，看到现在学编程的人经常都把编程看作解各种脑筋急转弯的问题，他觉得很遗憾。

做系统，确实不提倡“重复发明轮子”。但注意，是不提倡“重复发明”，不是不提倡“重新制造”。恰恰相反的，我以为，系统的编程能力正体现在“重新制造”的能力。

能把已有的部件接起来，这很好。但当你恰好缺一种关键的胶水的时候，你能写出来吗？当一个已有的部件不完全符合你的需求的时候，你能改进它吗？如果你用的部件中有bug，你能把它修好吗？在网上繁多的类似功能的部件中，谁好谁坏？为什么？差别本质吗？一个开源代码库，你能把它从一个语言翻译到另一个语言吗？从一个平台移植到另一个平台吗？能准确估计自己翻译和移植的过程需要多少时间吗？能准确估计翻译和移植之后性能是会有提升还是会有所下降吗？

系统编程能力体现在把已有的代码拿来并变成更好的代码，体现在把没用的代码拿来并变成有用的代码，体现在把一个做好的轮子拿来能画出来轮子的设计蓝图，并用道理解释出设计蓝图中哪些地方是关键的，哪些地方是次要的，哪些地方是不容触碰的，哪些地方是还可以改进的。

如果你一点不懂理论，还是应该学点的。对于系统性能的设计上，算法和数据结构就像在自己手头的钱一样，它们不是万能的，但不懂是万万不行的。

怎么提高系统编程能力呢？土办法：多造轮子。就像学画画要画鸡蛋一样，不是这世界上没有人会画鸡蛋，但画鸡蛋能驯服手指，感受阴影线条和笔触。所以，自己多写点东西吧。写个编译器？渲染器？操作系统？web服务器？web浏览器？部件都一个个换成自己手写的，然后和已有的现成部件比一比，看看谁的性能好，谁的易用性好？好在哪儿？差在哪儿？为什么？

更聪明一点的办法：多拆轮子。多研究别人的代码是怎么写的。然而这个实践起来经常很难。原因：大部分工业上用的轮子可能设计上的思想和技术是好的，都设计和制造过程都很烂，里面乱成一团，让人乍一看毫无头绪，导致其对新手来说非常难拆。这种状况其实非常糟糕。所以，此办法一般只对比较简单的轮子好使，对于复杂的轮子，请量力而行。

轮子不好拆，其实是一个非常严重的问题。重复发明轮子固然是时间的浪费，但当轮子复杂而又不好拆的时候，尤其是原来造轮子的人已经不在场的时候，重新发明和建造轮子往往会成为无奈之下最好的选择。这是为什么工业界在明知道重复发明/制造轮子非常不好的情况下还在不断重复发明/制造轮子的根本原因。

程序本质是逻辑演绎的形式化表达，记载的是人类对这个世界的数字化理解。不能拆的轮子就像那一篇篇丢了曲谱的宋词一样，能读，却不能唱。

鄙人不才，正在自己研究怎么设计建造一种既好用又好拆的轮子。您没那么幸运，恐怕是等不到鄙人的技术做出来并发扬光大了。在那之前，多造轮子，多拆好拆的小轮子，应该是提高编程能力最好的办法了。

以上。嗯。
（文章属个人观点，与本人工作雇主无关。）





====


著作权归作者所有。
商业转载请联系作者获得授权，非商业转载请注明出处。
作者：mu mu
链接：http://www.zhihu.com/question/31034164/answer/50544545
来源：知乎

懂得取舍。

在有限的时间内，几乎没有系统可以做到完美。要快，要安全，高并发，易扩展，效率高，容易读，高内聚，低耦合...

大到一个网站，小到几个class，工程师都要清楚，要取什么，舍什么，这并不是那么容易的事。我们都有自己的性格，有的求新，有的求稳，有的求快，但具体到一个项目时，知道如何取舍对这个项目最好，很重要。

学校里的作业，没人在意你是不是写在一个大的main()里面，能跑就行。但做项目的时候，太多的东西要考虑，有时候，宁可简单易读，也不用快那么一点点；有时候，要做太多看不到的工作，却丝毫马虎不得；有时候，写了不如不写，留白也是一个学问。

曾经接手个项目，里面几乎所有的class，每个都有interface，各种继承，各种实现，理由是灵活性高，易扩展。真的易扩展吗？

我不知道。没多久，客户的需求就改了，各种拎不清的继承实现都化为乌有，一大半要重写。

问题在哪里？

不是编程不好，而是取舍的不好。在那个阶段，为30%的需求，花200%的努力，追求设计的滴水不漏，却舍弃快速实现，取得反馈的时机，这就是失误。需求总会变，客户看到越早，修改越早，影响越小。

很聪明的人，也可能做出很难用的系统，不一定是编程不好，可能是不愿，或不屑于取舍。不同的阶段，不同的项目，要取舍的东西也不同。编程只是手段，目的是解决问题，能力高不高，要看问题解决的好不好。不在于使用了什么高端算法，或是复杂的框架。

懂得如何取舍并不容易，需要对问题的深刻理解，对技术的胸有成竹，和身后无数个踩过的坑。但重要的是有取舍的意识，主动思考取舍什么，这样学的才会快。



