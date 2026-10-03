resource "docker_container" "web_server_dev" {
  name  = "web_server_dev"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 4001
  }
}

output "nginx_id_dev" {
  value = docker_image.nginx.image_id
}