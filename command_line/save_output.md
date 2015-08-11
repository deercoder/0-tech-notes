Save Output
===

_This will tell us how to save the output of command into files_

**NOTE**: not only the *redirection* is important, as `ls xxx > a.log` shows, it is not enough for some result that outputs into the standard output. So we need extra editor to save the result.

	./build/tools/caffe train --solver=examples/cifar10/cifar10_quick_solver.prototxt 2>&1 |tee log.txt

In the above command, the output and error output are both directed to the output which is captured by the tee editor and it will be saved to the `log.txt` file, which records both the print of your program, and the log information that will be redirected to the standard output(This part will be displayed in the output as they're invisible, but will be seen if we direct)

**AND** the above command will both give the output as well as recording their content to other files


## Appendix

This list gives us how to use `gdb` to debug the `caffe` program, in fact, it can be used as any other binary files using `gdb`, but we should lay on the ground that the **DEBUG** flag is open on the executable binary file(which means the by using g++/gcc the option should be on, or the flag in the Makefile should have `DEBUG:=1` on)

	gdb --args ./build/tools/caffe train --solver=examples/cifar10/cifar10_quick_solver.prototxt 
