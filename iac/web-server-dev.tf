resource "docker_container" "web_server_dev" {
  name = "web_server_dev"
  image= docker_image.nginx.image_id

  ports {
    internal = 80
    external = 4001
  }
}

# Find the latest Ubuntu precise image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

output "nginx_id" {
    value = docker_image.nginx.image_id
}