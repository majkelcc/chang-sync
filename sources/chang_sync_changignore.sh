chang_sync_changignore() {
  changignorefile=$(test -f .changignore && echo .changignore || echo .chang/ignore)
  while read ignore || [ -n "${ignore}" ]; do
    echo -n "-ignore='${ignore}' "
  done < ${changignorefile}
}