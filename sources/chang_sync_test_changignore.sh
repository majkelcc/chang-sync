chang_sync_test_changignore() {
  [[ -f .changignore || -f .chang/ignore ]] || chang_error "Chang-sync requires .changignore file to be present"
}