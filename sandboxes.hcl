resource "network" "ip1" {
  subnet      = "10.100.100.0/24"
  enable_ipv6 = false
}

resource "container" "container-test" {
  image {
    name = "ubuntu:22.04"
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
