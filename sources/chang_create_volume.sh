# if not exists
chang_create_volume() {
  local name=$1
  if ! docker volume ls -q | grep -qF "\b${name}\b"; then
    docker run --rm \
      --volume "$name":/volume \
      --entrypoint="" \
      ${CHANG_MIN_IMAGE} \
      chown ${CHANG_UID}:${CHANG_GID} /volume
  fi
}