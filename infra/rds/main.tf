resource "aws_db_instance" "uaifood_db" {
  allocated_storage       = var.allocated_storage
  instance_class          = var.db_instance_class
  engine                  = var.db_engine
  engine_version          = var.db_engine_version
  identifier              = var.db_instance_identifier
  username                = var.db_username
  password                = var.db_password
  multi_az                = var.multi_az
  storage_type            = "gp2"
  storage_encrypted       = true
  deletion_protection     = var.delete_protection
  backup_retention_period = 7
  db_name                 = var.db_name
  parameter_group_name    = "default.mysql8.0"

  tags = {
    Name = "uaifood-db"
  }

}
