# Examples of how files shold compile in

Given the following files:

intro.md

	# The Intro
	
	This is the intro

	## Subsction

	This is a subsection

help.md

	# Getting help
	
	You can get help in the following ways

	## Man Pages

	Using the [man command](%{MANPAGES})

The compilation output should be equivalent to

	# The Intro
	
	This is the intro

	## Subsection

	This is a subsection

	## Getting help

	You can get help in the following ways

	### Man pages

	Using the [man command](%{MANPAGES})

Note that the first file is not altered, but the second file's headers have been incremented once.

This way, any file can act as the main file for a page, and any subsequent files can be formatted in can be made children of any others

The link in `%{MANPAGES}` can be post-processed to point at the relevant file and subsection
