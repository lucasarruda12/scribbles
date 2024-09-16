# Open a file by its Filepath using `:edit`

- the `:edit` command allows us to open filesfrom within Vim, either by specifying an absolute or relative filepath. We´ll also learn how to specify a path relative to the actve buffer

## Open a file relative to te current working directory

- In vim, just like in bash and other shells, we have the notion of a working directory. When vim is launched, it adopts the same working directory that was active in the shell.

- the `:pwd` command prints the current working directory.

- the `:edit` command can accept a filepath relative to the working directory.

- We can use the tab key to autocomplete these filepaaths

## Open a file relative to th active file directory

- The `%` symbol is shorthand for the filepath of the active buffer.

- The `:h` modifier removes the filename while preserving the rest of the path.

- So `:edit %:h{file}` opens a file on the same directory of the current buffer.

# Open a file by its filename using `:find`

- The `:find` command allows us to open a file by its name without having t provide a fully qualified path. To exploit this feature, we first have to configure the ´path´ setting.

## Configure the path

- the path option allows us to specify a set of directories inside of which vim will search when the `:find` command is invoked.

- `:set path+={dir}` can be used to add a directory to path

## Use `:find` to look u files by name

- having set the path option, we can just use `:find {filename}` to look it up.

- We can use tab completion to speed up the task


# Save files to nonexisten directories

- Vim is happy to let us edit a buffer whose path included diirectories that don´t exist. It´s only when we attempt to write the buffer to a file that Vim objects. Here´s a quick tip on how to deal with this situation.

- We can call mkdir from vim´s command line mode and create the needed file structure: `:!mkdir -p %:h`. The `-p`flag tells mkdir to create intermediate directories.

# Save file as the super user

- We can call `:w` and pass its content(the entire buffer) to a shell command: `:w !sudo tee % > {file} `
