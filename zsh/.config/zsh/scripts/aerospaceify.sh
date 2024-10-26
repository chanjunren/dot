local num_workspaces=8
local num_monitors

num_monitors=$(aerospace list-monitors --count)

moveWorkspacesToRespectiveMonitors() {
  # I just want 8 screens to be positioned correctly
  for workspace_idx in {1..8}; do
    move_times=$(( (workspace_idx - 1 ) % $num_monitors ))

    for (( i=1; i<=move_times; i++ )); do
      aerospace move-workspace-to-monitor --workspace $workspace_idx next
    done;
  done
}

moveWorkspacesToRespectiveMonitors

