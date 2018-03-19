chang_sync_stop_server() {
  if chang_sync_server_exists; then
    docker rm -f $CHANG_SYNC_CONTAINER >/dev/null 2>&1
  fi
}