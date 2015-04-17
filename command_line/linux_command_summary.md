Some tips about Linux
====

1) find  *.c or *.h which contains the keyword 'rotateX'

	find -name *.[ch] | xargs grep -E "rotateX"

2) difference of `.bashrc` or `.bashprofile`

```
/etc/bash.bashrc: system's bashrc when booted in
/etc/bashprofile: system's bashprofile when booted in
~/.bashrc: user's bash config when current user booted in
~/.bashprofile: current user's bash profile
```

3) mount server's file system automatically

```
sudo mount -t smbfs -o rw,username=liuchang,password=,uid=liuchang,gid=liuchang //172.31.130.100/liuchang ~/100-server/
sudo mount -t smbfs -o rw,username=liuchang,password=,uid=liuchang,gid=liuchang //172.31.130.130/liuchang ~/130-server/
sudo mount -t smbfs -o rw,username=liuchang,password=,uid=liuchang,gid=liuchang //172.31.130.100/liuchang/mini ~/mini/
```
## Note: must add gid and uid to get write access. no matter what option you set
