tell application "System Events"
  tell appearance preferences
    if dark mode is false then
      set dark mode to true
      display dialog "Dark mode activated"
    else
      set dark mode to false
      display dialog "Light mode activated"
    end if
  end tell
end tell
