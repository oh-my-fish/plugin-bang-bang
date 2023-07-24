function __history_previous_command_arguments
  switch (commandline --current-token)[-1]
  case "!"
    commandline --current-token ""
    commandline --function history-token-search-backward
  case "*"
    commandline --insert '$'
  end
end
