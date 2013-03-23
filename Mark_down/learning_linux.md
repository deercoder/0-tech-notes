Linux 学习笔记
============================

1. 7zip压缩和备份文档。
   + DO NOT USE the 7-zip format for backup purpose on Linux/Unix because :
        - 7-zip does not store the owner/group of the file.

   + On Linux/Unix, in order to backup directories you must use tar :
        - to backup a directory  : tar cf -  directory  |  7za  a  -si  direc‐
       tory.tar.7z
        - to restore your backup : 7za x -so directory.tar.7z | tar xf -

   + If  you  want  to send files and directories (not the owner of file) to
       others Unix/MacOS/Windows users, you can use the 7-zip format.
         example : 7za a directory.7z  directory
2. 如何取消每次开机时候的自动更新？
   在System - Preference - startup Application 中，取消 Update Notification的选项
   即可。另外，也可以在其中取消很多无用的服务避免每次都开机启动，提高速度。比如
   蓝牙等服务。

3. Shell中的命令替换，使用``用来替换命令，比如myvar=`ls -l`，则myvar就是执行命令
   ls -l的结果。同样，还可以使用$()来实现同样的功能，比如myvar=$(ls -l)
