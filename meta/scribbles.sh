# This makes the script a little zsh-only
meta_dir="${0:A:h}" # <-- If you like bash, this needs to be changed

editor_cmd="nvim -S ${meta_dir}/scribbles.vim "
mdserver_cmd="mdbook serve $meta_dir/.."
session_name="scribbles"

sessionexists=$(tmux list-sessions | grep $session_name)

if [ "$sessionexists" = "" ]
then
    tmux new-session -d -s $session_name

    tmux send-keys -t "$session_name:0" "alias e=\"$editor_cmd\""
    tmux send-keys -t "$session_name:0" "alias serve=\"$mdserver_cmd\"" C-m 
    tmux send-keys -t "$session_name:0" "export PROMPT=$'%F{3}[scribbles][%~]\n$ %F{white}'" C-m
    tmux send-keys -t "$session_name:0" "cd $meta_dir/../notes" C-m
fi

tmux attach-session -t $session_name:0
