chang_sync_server_exists() {
  container=$(chang_sync_container)
  ! test -z $(docker ps -aq --filter name=^/${container}$ 2>/dev/null)
}