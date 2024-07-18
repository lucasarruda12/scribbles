#  Run normal mode commands accross a range

- use :{range}normal (command)
- *Command* can be any normal mdode command, including the dot command.

- Exemples:
    - `:%normal i//` can be used to comment out an enteire javascript file.
    - using the same principle, `:'<,'>normal i//` can be used to comment out the current visual selection

# Repeat the last ex command

- just like `.` repeats the last normal mode command, `@:` repeats the last ex command
- after the first `@:`, you can subsequently use just `@@`

# tab-complete yout ex commands

- `<tab>` autocompletes commands at the prompt
- `<S-tab>` cycles back through the list

# insert the current word at the command prompt

- (Neo)Vim keeps track of the current cursor position even in command-line mode
- use `<C-r><C-w>` to copy the word under the cursor to the command-line prompt

# recall commands from history

- (neo)vim records the last command-line mode commands
- on a blank command-line mode prompt pressing `<Up>` reccals the most recent command
- using `<Down>` goes in the opposite direction

- on a populated prompt, (neo)vim recalls the most recent command starting with that word

- by default, vim records the 200 most recent commands
- set history={int} can be used to change the default
- the history is persistent through sections

- `q:` opens the command-line window
- the command-line window is a fully fledged buffer and can be used as such

# run commands in the shell

- Vim can run commands directly through the terminal
- use a `!` symbol to run shell commands via command-line mode
- the `%` symbol is short for the current file name

- `:shell` can be used to fire an interactive shell session from vim
- not in neovim, though
- `<C-z>` can be used to put the current nvim proccess in the background and `fg` can be used to bring it back. It does work almost the same as the `:shell` command

- the `:read !{cmd}` syntax can be used to write the output from the shell to the current cursor position
- the `:write !{cmd}` syntax does the opposite, uses the content of a buffer as input to the command

- the `:{range} !{cmd}` syntax can be used to filter the range through a command.

# run multiple ex commands as a batch

- command-line modes can be saved to disk in a .vim file
- using the command `:source {file}.vim` runs the commands in the file

