local status, tmux = pcall(require, "tmux")

if (not status) then return end

tmux.setup()

