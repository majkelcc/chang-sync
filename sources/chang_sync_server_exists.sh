chang_sync_server_exists() {
  ! test -z $(docker ps -aq --filter name=^/${CHANG_SYNC_CONTAINER}$ 2>/dev/null)
}