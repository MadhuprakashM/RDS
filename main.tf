resource "aws_db_instance" "myrds" {
  identifier        = "my-rds-instance"
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"

  db_name  = var.db_name
  username = var.db_username
  password = var.db_password

  publicly_accessible = true
  skip_final_snapshot = true

  tags = {
    Name = "Terraform-RDS"
  }
}
