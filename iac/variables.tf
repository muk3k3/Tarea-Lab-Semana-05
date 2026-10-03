variable "web_server_port" {
  type        = map(number)
  description = "El puerto externo del frontend por ambiente"
}

variable "api_port" {
  type        = map(number)
  description = "Puerto externo del backend por ambiente"
}

variable "db_port" {
  type        = map(number)
  description = "Puerto externo de la base de datos por ambiente"
}