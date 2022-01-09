bind ! __history_previous_command
bind '$' __history_previous_command_arguments
bind 'S' __history_previous_command_root

# set up the same key bindings for insert mode if using fish_vi_key_bindings
if test "$fish_key_bindings" = 'fish_vi_key_bindings'
    bind --mode insert ! __history_previous_command
    bind --mode insert '$' __history_previous_command_arguments
    bind --mode insert S __history_previous_command_root

end

function _plugin-bang-bang_uninstall --on-event plugin-bang-bang_uninstall
    bind --erase --all !
    bind --erase --all '$'
    bind --erase --all S
    functions --erase _plugin-bang-bang_uninstall
end
