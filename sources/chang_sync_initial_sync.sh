chang_sync_initial_sync() {
  verbose=${1:-false}
  chang_sync_start_client $($verbose || echo -silent) -batch -ignorelocks -ignorearchives -force "$CHANG_PWD" -perms -1
  code=$?
  case $code in
    0) chang_notice "Initial sync finished";;
    1) chang_error "Initial sync failed because some files were skipped";;
    2) chang_error "Failures occurred during initial sync";;
    3) chang_error "Fatal error occured during initial sync";;
    *) chang_error "Unison server returned unknown exit code: ${code}";;
  esac
}