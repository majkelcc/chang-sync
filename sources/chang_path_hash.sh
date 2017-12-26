chang_path_hash() {
  echo ${1} | shasum - | head -c 8
}