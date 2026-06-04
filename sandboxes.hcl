

resource "container" "container-test" {
  image {
    name = "ubuntu:22.04"
  }
  port {
    local    = "8000"
    protocol = "tcp"
  }
  privileged = false
  resources {
    cpu    = 1000
    memory = 256
  }
  run_as {
    user  = "root"
    group = "root"
  }
}
