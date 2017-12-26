chang_sync_stop_server() {
  if chang_sync_server_exists; then
    local container=$(chang_sync_container)
    docker rm -f $container >/dev/null 2>&1
  fi
}