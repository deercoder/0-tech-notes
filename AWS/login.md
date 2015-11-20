LOGIN
====

This is command for logging in with the `.pem` or `.ppk` file, for Windows, just use the `PUTTY` and load the `*.ppk` file with the file explorer.

For Linux, using the following command:
```
   ssh username@IP-address -i XXX.pem
```

This will make sure that you can log into the console of the remote server.

If there is some indicates of the permission problem, then just go to the directory and using `chmod 400 XXX.pem` to narrow the permission.


## Reference:
AWS tutorial: http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-connect-master-node-ssh.html
