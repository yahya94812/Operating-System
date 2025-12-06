# VIM basic commands
---
## MODES
* normal {Esc}
* insert {i}
* visual {v}
* command-line mode {:}
---
## NAVIGATION
* 0 :move to beginning of the line
* $ :move to end of the line 
* gg :move to the start of file
* G :move to the end of file
* w :move the cursor at beginning of next word
* e :move the cursor at the end of current word or next word
* b :move the cursor at the beginning of previous word
* /{search} :search for pattern
* n :repeat search in same direction
---
## EDITING
* a :append after cursor
* o :open new line
* x :delete char under cursor
* dd :delete current line
* yy :Yank(copy) current line
* p :paste after cursor
---
## UNDO, REDO
* u :undo
* ctrl+r :redo
---
## COPY, PASTE
* ggVG :select whole text {V for visual_line mode}
* y :for copy whole text
* d :for delete whole text
* p :for pasting