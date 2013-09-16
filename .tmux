#!/bin/bash

NAME=soshop

tmux has-session -t $NAME

if [ $? -eq 0 ]; then
        echo 'Session $NAME already exists. Attaching'
        sleep 1
        tmux -2 attach -t $NAME
        exit 0
fi

tmux start-server

tmux -2 new-session -d -s $NAME

## Set Editor Window
tmux rename-window -t $NAME:1 editor #tmux new-window -t $NAME:1 -n editor
tmux send-keys -t $NAME:editor "vim ." C-m

## Set Console Window
tmux new-window -t $NAME:2 -n console
tmux send-keys -t $NAME:console "clear" C-m
tmux send-keys -t $NAME:console "git status" C-m

## Set Test Windows
tmux new-window -t $NAME:3 -n tests
tmux split-window -t $NAME:tests -h
tmux send-keys -t $NAME:tests.1 "zeus start" C-m
tmux send-keys -t $NAME:tests.0 "guard" C-m
tmux send-keys -t $NAME:tests.0 "all" C-m

# make the tmux session active
tmux attach-session -d -t $NAME