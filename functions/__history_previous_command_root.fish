function __history_previous_command_root
  switch (commandline -t)
  case "!"
    commandline -t "sudo $history[1]"; commandline -f repaint
  case "*"
    commandline -i S
  end
end
