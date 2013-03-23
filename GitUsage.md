利用http访问git
===

可以使用git pull/push https:/xxxxx/xx.git这种方式来获取git代码。

注意点：
不要使用界面中显示的SSH/HTTP/READ-ONLY中对应的https的地址，那个地址中包含有@，会造成最终不成功。而直接使用打开页面中的那个那个地址，然后加上后缀名.git即可。
如：https://github.com/username/helloworld.git即可。而不要使用
https://username@github.com/username/xxx.git这种方式，后者会报错。



***
Git使用初步
===

ssh -T git@github.com

then git remote add xxx git@github.com:username/repoistory

git push -u xxx master

