Geremachek's Merlin configuration
---------------------------------

- spellbook.mn // main config file
- visual.mn    // "visual" mode nomens
- greek.mn     // greek character nomens
- runic.mn     // rune nomens
- letters.mn   // alternate latin alphabet symbols
- symbols.mn   // symbol definitions
- bin/         // executables used by nomens

[ spellbook.mn ]

	;i       -> ;inscribe alias
	;disp    -> display and remove an item off of the stack
	;penn    -> ;pen but with a newline
	;dispn   -> ;disp but with a newline
	
	;doc     -> push the contents of the open buffer to the stack
	;pdoc    -> print the entire buffer

	;nl      -> ;doc, but with line numbers
	;ldoc    -> ;pdoc, but it calls ;nl instead of ;doc

	;ppeer   -> ;peer but it calls ;dispn afterwards

	;cline   -> push the current line to the stack
	;pline   -> print the current line

	;cspine  -> display the name of the current buffer, including a write indicator

	;lines   -> tether the stack by newlines
	;words   -> tether the stack by spaces
	;zip     -> tether the stack

	;h       -> move the cursor back one character
	;j       -> move the cursor down
	;k       -> move the cursor up
	;l       -> move the cursor forward

	;g       -> go to the top of the file
	;G       -> go to the bottom

	;leap    -> jump to the first occurence of a string on the current line (./bin/leap)
 
	;0       -> go to the beginning of a line
	;$       -> go to the end of a line

	;del     -> delete one character 

	;curs    -> shows where the cursor is on the current line
	;dcurs   -> shows where the cursor is in the file
	;lcurs   -> ;dcurs with line numbers

	;clear   -> clear the screen

	;dfilter -> use a command to "filter" the current buffer, pushing it to the stack
	;cfilter -> ;dfilter, but for the current line
	;replace -> replace the buffer with an item from the stack

	;sed     -> call sed(1) on the current buffer

	;break   -> a line break
	;;       -> insert a line break into the buffer

	;dd      -> delete a line

	;ib      -> "insert break mode", each line you enter in scribe mode will be inserted into the buffer, along with a newline
	;ii      -> "insert mode", ;ib but without the newline

	;vi      -> "atom insert mode", like ;ii but it also calls ;atom-nomen

	;s       -> ;scribe, but it resets sribe-nomen each time
	;a       -> ;s, but for ;atom

	;A       -> alias for ;atom, also calls ;atom-nomen

	;ls      -> calls ls(1)

	;wi      -> call ;words and then ;inscribe
	;si      -> ;space ;inscribe

[ visual.mn ]

	;vline -> "visual line mode", tells atom-nomen to clear the screen, and call ;curs
	;vdoc  -> "visual document mode", ;vline but it calls ;dcurs instead of normal ;curs
	;vld   -> "visual line document mode", ;vdoc but with line numbers
