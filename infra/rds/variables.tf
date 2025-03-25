variable "db_instance_identifier" {
  type        = string
  description = "ID da instância do RDS"
  default     = "uaifood-db"
}

variable "db_engine" {
  type        = string
  description = "Versão do motor do RDS"
  default     = "mysql"
}

variable "db_engine_version" {
  type        = string
  description = "Versão do motor MySQL"
  default     = "8.0.33"
}

variable "db_instance_class" {
  type        = string
  description = "Classe da instância do banco de dados"
  default     = "db.t4g.micro"
}

variable "db_name" {
  type        = string
  description = "Nome do banco de dados"
  default     = "uaifood"  # Alterado para uaifood
}

variable "db_username" {
  type        = string
  description = "Nome do usuário administrador"
  default     = "admin"
}

variable "db_password" {
  type        = string
  description = "Senha do usuário administrador"
  sensitive   = true
}

variable "allocated_storage" {
  type        = number
  description = "Tamanho do armazenamento da instância"
  default     = 20
}

variable "multi_az" {
  type        = bool
  description = "Habilitar Multi-AZ?"
  default     = false
}
variable "delete_protection" {
  type        = bool
  description = "Habilitar proteção contra exclusão"
  default     = false
}
