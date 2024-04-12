#!/bin/bash

# Set Session Name
SESSION="alexveden"
SESSIONEXISTS=$(tmux list-sessions | grep $SESSION)
PROJ_PATH="/home/ubertrader/code/alexveden.github.io/"
JUPYTER_TOKEN=""
PROMPT='%{$fg[cyan]%}%2d%{$reset_color%} ➜ '
# Only create tmux session if it doesn't already exist
if [ "$SESSIONEXISTS" = "" ]
then
    # Start New Session with our name
    tmux new-session -d -c $PROJ_PATH -s $SESSION
    # tmux set-environment -t $SESSION CONDA_DEFAULT_ENV $ENV
    tmux set-environment -t $SESSION PROMPT "$PROMPT"

    # Name first Pane and start zsh
    W="dev"
    tmux rename-window -t 1 "$W"
    tmux send-keys -t "$W" "cd $PROJ_PATH" C-m
    # tmux send-keys -t "$W" "nvim -c \"SessionManager! load_current_dir_session\"" C-m
    tmux send-keys -t "$W" "nvim" C-m

    tmux split-window -t "$W" -v -l 10
    tmux send-keys -t "$W" "cd $PROJ_PATH" C-m
    #tmux send-keys -t "$W" "conda activate $ENV" C-m
    tmux send-keys -t "$W" "clear" C-m
    #
    # # setup Writing window
    # W="dash"
    # tmux new-window -t $SESSION:2 -n "$W"
    # tmux send-keys -t "$W" "j text_dash" C-m
    # tmux send-keys -t "$W" "p text_dash.py" C-m
fi
# Attach Session, on the Main window
tmux attach-session -t $SESSION:1
