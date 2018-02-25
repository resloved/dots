#!/bin/sh

tmux new-session -d 'vim';
tmux split-window -h;
tmux -2 attach-session -d;
