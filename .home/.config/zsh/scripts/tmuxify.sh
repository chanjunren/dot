inTmuxSession() {
  [[ -n "$TMUX" ]]
}

inVscodeIDE() {
  [[ "$TERM_PROGRAM" == "vscode" || -n "$VSCODE_INJECTION" ]]
}

inIntellijIDE() {
  [[ -n "$TERMINAL_EMULATOR" ]]
}

inIntegratedIDE() {
  inVscodeIDE || inIntellijIDE
}



if ! inTmuxSession && ! inIntegratedIDE; then
  # Check if there is any existing tmux session
  if tmux ls >/dev/null 2>&1; then
    # Attach to the first session found
    tmux attach-session -t 0
  else
    # No session exists, create a new one
    tmux new-session
  fi
fi

