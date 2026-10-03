resource "docker_container" "web_server_qa" {
  name = "web_server_qa"
  image= docker_image.nginx.image_id

  ports {
    internal = 80
    external = 5001
  }
}

# Find the latest Ubuntu precise image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

output "nginx_id" {
    value = docker_image.nginx.image_id
}