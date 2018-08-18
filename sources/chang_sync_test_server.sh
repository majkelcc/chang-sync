chang_sync_test_server() {
  local tests=${1:-1}
  local verbose=${2:-false}
  local server_url=$(chang_sync_server_url)
  for _ in $(seq 1 ${tests}); do
    if /usr/local/bin/unison $(${verbose} || echo -silent) -testserver ${CHANG_PWD} $server_url 2>/dev/null; then
      return 0
    fi
    sleep 1
  done
  return 1
}