chang_sync_volume() {
  chang_app_id=$(chang_app_id "$@")
  echo -n ${chang_app_id/chang_/chang-sync_}
}