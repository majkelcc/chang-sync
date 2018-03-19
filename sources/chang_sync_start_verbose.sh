chang_sync_start_verbose() {
  local verbose=true
  volume=$CHANG_SYNC_VOLUME
  chang_notice "Starting chang-sync in verbose mode"
  chang_sync_stop_server
  chang_notice "Docker volume name: $volume"
  chang_notice "Starting chang-sync container"
  chang_sync_start_server
  chang_notice "Performing initial sync"
  chang_sync_initial_sync $verbose
  chang_notice "Running chang-sync in verbose mode"
  sync $verbose
}