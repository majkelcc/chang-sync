chang_sync_server_running() {
  ! test -z $(docker ps -q --filter name=^/${CHANG_SYNC_CONTAINER}$)
}