chang_sync_start() {
  if ! chang_sync_server_running; then
    echo "Starting chang-sync"
    chang_sync_start_server
    echo "Performing initial sync"
    chang_sync_initial_sync
    sync_daemon
    echo "Chang-sync started"
  fi
}
