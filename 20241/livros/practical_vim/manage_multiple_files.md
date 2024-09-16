# Track open files with the buffer list

- we can load multiple files during an editing session. (neo)vim lets us managethem using the buffer ist

    - When editing in vim, we do not edit a file, we edit a *buffer*, an in-memory representation of a file.
    - Files are stored in disk, while a *buffer* is stored in memory

    - Vim allows us to work with multiple buffers at a time.

| ex command | Effect |
| ---------- | ------ |
| `:ls`      | lists the current buffers |
| `:bn[ext]` | jumps to the next buffer |
| `:bp[revious]` | jumps to the previous buffer |
| `:bl[ast]` | jumps to the last buffer |
| `:bf[irst]`| jjumps to the first buffer |
| `:buffer {number or name}` | jumps to the specified buffer |
| `:bd[elete] {number or name}` | deletes the specified buffer from memory |

- the `bufdo` command executes a ex command in all the buffers listed by ls

# Group buffers into a collection with the argument list

- the argument list is easily managed and can be useful for grouping together a collection of files for easy navigation. We can run an Ex command on each item in the argumentlist using the `:argdo` command.

    - The arguments list represents the list of files that were passed as an argument when we ran the (n)vim command. 

    - We can change the content of the argument list at any time, so the name is not literal.

- we can populate the argument list using the `:args {arglist}` syntax
    - *arglist* can include filenames, wildcards or event output from a shell command

- One exemple of populating from command:
    - Saving the names of several files to a file on disk, one could run `:args 'cat file'` to load the contents of file to the argument list

- `:next` and `:prev` navigate through the argument list

# Manage hidden files

- When a buffer has been modified, vim gives it special treatment to ensure that we don't accidentaly quit the editor without saving our changes. Find out how to hide a modified buffer and how to handle hidden buffers when quitting vim.

    - when running `:ls`, the buffer annotated with a + sign indicates that it has been modified.

    - a buffer that has been changed but is not currently active is marked with an `h` for hidden

    - when leaving the editor (with `:q` or `:quit`), vim alerts to all the buffers with unwritten changes

| Ex Cmd     | Effect |
| ---------- | ------ |
| `:w[rite]` | writes the content of the buffer to disk |
| `:e[dit]`  | reads the file from disk back into the buffer (that is, revert changes) |
| `:qa[ll]`  | closes all windows, discarding changes without warning |
| `:wa[ll]`  | writes all modified buffers to disk |

- by default, vim raises a warning when trying to leave a modified buffer. My current nvim configs do not.

# Divide your workspace into split windows

- Vim allows us to view multiple buffers side by side by dividing our workspace into split windows

    - In vim terminology, a *window* is a viewport onto a buffer. We can open multiple windows, each containing the same buffer, or we can load different buffers into each window.

- `<C-w>s` splits the window horizontally
- `<C-w>v` splits the window vertically

- splitting the window, either vertically or horizontally with the `<C-w>` command, creates a copy of the current buffer

- `:sp[lit] {file}` splits horizontally and loads the specified file
- `:vsp[lit] {file}` splits vertically and loads the specified file

- `<C-w>w` cycles between open windows
- so does `<C-w><C-w>`
- `<C-w> {movement key}` moves the focus on the specified direction 

- `:clo[se]` or `<C-w>c` closes the active window
- `:on[ly]` or `<C-w>o` keeps only the active window open, closing all others

- `<C-w>=` Equalizes width and height of all windows
- `<C-w>_` Maximizes the height of the active window
- `<C-w>|` Maximized the width of the active window
- `[N]<C-w>_` Sets active window height to [N] rows
- `[N]<C-w>|` Sets active window width to [N] columns

- The mouse can also be used to resize  windows if the terminal supports it or when using GVim.

# Organize your window layouts with tab pages

- Vim's tabbed interface is different from that of many ther text editrs. We can use tab pages to organize split windows into a colection of workspaces.

- `:tabe[dit] {filename}` loads {filename} into a new tab
- `:tabc[lose]` closes the current tab
- `:tabo[nlly]` closes all other tabs, keeping only the current one open

- `<C-w>T` moves the current window to a new tab

- `gt` `g`oes `t`o the next tab
- `[N]gt` `g`oes `t`o tab `[N]`

- `:tabmove [N]` moves the current tab to position [N]. If [N] is 0, then the current tab is moved to the beggining. If we ommit the [N], then the current tab is moved to the end.

- If the terminal supports it, the mouse can be used to move tabs.
