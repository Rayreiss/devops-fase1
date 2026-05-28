variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}