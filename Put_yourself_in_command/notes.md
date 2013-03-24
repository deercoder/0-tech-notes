Notes for PYIC(put yourself in command)
========

1. apropos xxxx

   search for the command of xxx.

   e.g: apropos rename
	
		dpkg-name (1)        - rename Debian packages to full package names

		git-mv (1)           - Move or rename a file, a directory, or a symlink

		mmove (1)            - move or rename an MSDOS file or subdirectory

		mren (1)             - rename an existing MSDOS file

		mv (1)               - move (rename) files

		prename (1)          - renames multiple files
	
		rename (1)           - renames multiple files

		rename (2)           - change the name or location of a file

		rename.ul (1)        - Rename files

		renameat (2)         - rename a file relative to directory file descriptors

		zipnote (1)          - write the comments in zipfile to stdout, edit comments...


2. asterisk(that is *) could represent multiple characters, not just one.
   how to remove hidden files using asterisk?

   normally 'rm *' will not delete the hidden files like .gitignore, so we have to use a dot before asterisk to delete it.

             rm .* // delete hidden files

3. quesion mark(that is ?) could only represent one character, not multiple characters like asterisk

    other usage is the same as the *...

4. square brackets(that is []) could specify the range of some characters.

	e.g: ls file_[1,2,a,b] // list  file_1, file_2, file_a, file_b

      === (equal) ls file_[12ab]


  IT could also specify the range of characters, like :

    	ls file_[1-9]  // list file_1, file_2, ... file_9


5. disable wildcards(using the original meaning, not the representing)

   	ls \*file    \\ list *file, not xxfile

   using backslash will only help when there is only one character, using a pair of single quote to do will multiple characters.

   		ls '**?***[ab]'


6. inverting the wildcards(using caret, that is ^)

   	rm [^file_]*  // delete files that doesn't match file_*

   that is to leave the file file_1, file_x not deleted

7. option -r and -R difference

   	r: reverse the order, sometimes could be equal to -R. 

   	R: recursively, do the operation for another loop times 

8. set search maxpath for FIND command

It is possible, however, to control how far find sinks in the directory tree.
        
	$find . -maxdepth 1 -name 'some*' -print
        	./some_other_file

By using the '-maxdepth' argument we can tell find to go no lower than the number of directories we specify


9. other options for FIND command

The -mtime option shows the latest modification time. Suppose you just can't remember anything about a file's name, but know that you created or modified it within the past three days. You can find all the files in your home directory that were created or modified within the past three days through:

        $ find ~ -mtime -3 -print

Notice the minus sign before the 3, for "less than." If you know you created the file yesterday (between 24 and
48 hours ago), you can search for an exact day:

        $ find ~ -mtime 1 -print

To find files that are more than 30 days old (caution: there will be a lot of these), use a plus sign:

10. Combining FIND with other COMMAND

        $ find directory_to_backup -mtime +30 -size +500k -print \
        -exec rm {} \;

The -exec option is followed by an rm command, but there are two odd items after it:

• {} is a special convention in the -exec option that means "the current file that was found"

• \; is necessary to tell find what the end of the command is. A command can have any number of arguments. Think of -exec and \; as surrounding the command you want to execute.  


10. Split files.

    	split -b 200m image.iso image_iso_ 

    This example generates three files named image.iso_aa, image.iso_ab, and image.iso_ac, each 200MB in size.

    If you want to join them again, use the command:
        
        $cat image.iso_* >new-image.iso


11. Copy and Paste.

    IN Linux, copy & paste is simple. You JUST select the text and it will copy to the flipboard, then click the middle of your mouse, it will paste it to the terminal or other app.


