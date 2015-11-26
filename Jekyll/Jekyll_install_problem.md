Jekyll Install Problem
===

When I pick up the Jekyll and want to update my github [website](deercoder.github.io), I suddenly find that it is not
working well in my local machine, even the `ruby` environment is not well.

So I read the post that I wrote before, see [here]() and [here]()


However, it is still not working well, so I have to reconfigure the environment and meet the problems that I encountered
before, it seems that some of the solutions are not working well in my new Ubuntu 15.10 system.

So I record some of the notes here in case it may be useful in the future!

##Upgrade the Ruby version

By default it seem that ruby is not up-to-date, I use the old way `curl -L https://get.rvm.io | bash -s stable --ruby` to
install ruby

##Install Jekyll

This step seems to encounter a lot of problems. I tried the old way as `gem install jekyll`. And there are some problems
like below

###gem install: Failed to build gem native extension (can't find header files)

This problem seems to occur from the lack of package named `ruby-dev`, in Ubuntu, I used this `apt-get install ruby-dev`
to install and the problem is fixed.

###The compiler failed to generate an executable file. (RuntimeError)

This problem is caused by the low version of gcc, I tried some way of modifying the commander like `sudo gem install jekyll --no-rdoc --no-ri`
or use command `apt-get install build-essential`, or `apt-get install ruby ruby-dev make gcc nodejs` as the prerequisites
but they're not working

Just use the `apt-get update` and `apt-get upgrade` to update gcc/g++.
