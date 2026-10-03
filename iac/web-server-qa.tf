resource "docker_container" "web_server_qa" {
  name  = "web_server_qa"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.web_server_port["qa"]
  }
}

output "nginx_id_qa" {
  value = docker_image.nginx.image_id
}