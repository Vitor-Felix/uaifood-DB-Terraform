# outputs.tf

output "db_endpoint" {
  description = "O endpoint do banco de dados RDS"
  value       = aws_db_instance.uaifood_db.endpoint
}
output "db_instance_id" {
  description = "ID da instância do banco de dados"
  value       = aws_db_instance.uaifood_db.id
}
