#!/bin/sh
tmux new-session -d -s dev_session 'bash' \; \
     send-keys '/usr/bin/mc ~/work' C-m \; \
     split-window -h -p 50 'bash' \; \
     send-keys '/usr/bin/mc' C-m \; \
     split-window -v -p 50 'bash' \; \
     select-pane -t 0
tmux attach-session -d -t dev_session
