chang_sync_start_client() {
  changignore="$(chang_sync_changignore)"
  server_url=$(chang_sync_server_url)
  eval /usr/local/bin/unison \
    $changignore \
    -root "${APP_PATH}" \
    -root $server_url \
    -perms 7 \
    "${@}"
}
