chang_sync_server_running() {
  ! test -z $(docker ps -q --filter name=^/$(chang_sync_container)$)
}