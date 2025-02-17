source config/variables.sh

sessionexists=$(tmux list-sessions | grep $tmux_session_name)

# don't need to create a new session
# if one is already there!
if [ "$sessionexists" = "" ]
then
    # create a new session
    tmux new-session -d -s $tmux_session_name

    # with an editor
    tmux rename-window -t 0 'editor'
    tmux send-keys -t "$tmux_session_name:0" "$cmd_editor" C-m

    # and a server
    tmux new-window -t "$tmux_session_name:1" -n 'mdbook server'
    tmux send-keys -t "$tmux_session_name:1" "$cmd_mdserver" C-m
fi

# and attach to it
tmux attach-session -t $tmux_session_name:0
