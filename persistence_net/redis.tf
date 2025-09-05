resource "docker_container" "redis" {
  name = "redis"
  image = "redis:8.2.1"

  ports {
    internal = 6379
    external = 6379
  }
}