resource "docker_container" "grafana" {
  name = "grafana"
  image = "grafana/grafana:latest"

  ports {
    internal = 3001
    external = 3001
  }
}