chang_sync_start_server() {
  chang_sync_test_changignore
  chang_sync_stop_server
  chang_sync_create_volume
  volume=$(chang_sync_volume)
  container=$(chang_sync_container)
  docker run \
    -d \
    -v $volume:/chang \
    -e CHANG_UID=${CHANG_UID} \
    -e CHANG_GID=${CHANG_GID} \
    -p 127.0.0.1::${CHANG_SYNC_SERVER_PORT} \
    --name $container \
    ${CHANG_SYNC_IMAGE} > /dev/null
  chang_sync_test_server 50
}