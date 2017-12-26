chang_sync_volume() {
  if [[ -z ${_CHANG_SYNC_DOCKER_VOLUME:-} ]]; then
    project_name=$CHANG_APP_NAME
    [[ -z ${project_name//[a-zA-Z0-9_-]/} ]] || project_name=""
    path_hash=$(chang_path_hash $project_name)
    _CHANG_SYNC_DOCKER_VOLUME="chang-sync${project_name:+_${project_name}}_${path_hash}"
  fi
  echo $_CHANG_SYNC_DOCKER_VOLUME
}