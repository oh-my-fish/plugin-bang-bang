function __history_previous_command
  switch (commandline --current-token)[-1]
  case "!"
    commandline --current-token $history[1]
    commandline --function repaint
  case "*"
    commandline --insert !
  end
end
