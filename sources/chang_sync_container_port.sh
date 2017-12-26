chang_sync_container_port() {
  if [[ -z ${_CONTAINER_PORT:-} ]]; then
    container=$(chang_sync_container)
    _CONTAINER_PORT=`docker port $container $CHANG_SYNC_SERVER_PORT/tcp 2>/dev/null | sed -E 's/.*127.0.0.1://'`
    [[ -n $_CONTAINER_PORT ]] || chang_error "Unison server has gone away"
  fi
  echo $_CONTAINER_PORT
}