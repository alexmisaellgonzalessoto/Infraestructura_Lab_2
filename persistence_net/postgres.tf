resource "docker_container" "postgres" {
  name  = "postgres"
  image = "postgres:latest"

  env = [
    "POSTGRES_USER=upao",
    "POSTGRES_PASSWORD= grupo_3",
    "POSTGRES_DB=infra",
  ]

  ports {
    internal = 5432
    external = 5432
  }
}
