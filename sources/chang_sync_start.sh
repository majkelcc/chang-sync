chang_sync_start() {
  if ! chang_sync_server_running; then
    chang_notice "Starting chang-sync"
    chang_sync_start_server
    chang_notice "Performing initial sync"
    chang_sync_initial_sync
    sync_daemon
    chang_notice "Chang-sync started"
  fi
}
