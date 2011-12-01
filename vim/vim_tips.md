# VIM tips

## Modes

- Visual Mode - Esc → Normal ← Esc - Insert
- Visual Mode ← v,V - Normal → i,I,a,A,o,O,r,R,s,S - Insert

- v – Visual mode character
- V – Visual mode line

- i – insert text before cursor
- I – insert text at the start of line
- a – append jest after the cursor
- A – append text at the end of line
- o – open new line below
- O – open new line above
- s – substitute current character (delete and insert)
- S – substitute current line (delete and insert)
- r – replace current character
- R – replace current line

## Navigation

- w - move to next word
- b - move to previous word
- e - mobe to the end of current word
- ge - move to the end of previous word
- 0 - move to the start of current line ???
- gm - move to the end of current line ???
- ^ - move to the first charcter of current line
- $ - move to the last character of current line

## File operations

- e [file] – edit file
- w [file] – write to file (save or save as)
- q – quite
- q! - quite and don''t save
- wa - save all to files
- qa - quite all
- qa! - quite all don''t save

## GUI

### tabs

- tabnew - open new tab
- tabnext - switch to next tab
- tabprev - switch to previous tab

## Selecting

- ggVG - select all text

## Uppercase, Lowercse, Swapcase 

- gum - lowercase text operated on by motion
- gUm - uppercase text operated on by motion
- g~m - switch case operated on by motion
- ~   - if notildeop is set (default), switch case under cursor
- ~   - if tildeop is set, switch case of {motion} text
- guw - lowercase current word
- gU$ - uppercase to end of line
- g~w - swapcase current word
- v$~ - swapcase to end of line (if notildeop is set)
- ~w  - swapcase of word (if tiildeop is set)

## Command line

### tabs

- vim -p [filename 1] [filename 2] ... [filename N] - opens all files in single vim instance each in seperate tab
- vim --remote-tab-silent [filename] - opens this file in existing vim instance in seperate tab
