output "db_endpoint" {
  description = "The database endpoint"
  value       = aws_db_instance.this.endpoint
}

output "db_username" {
  description = "DB username"
  value       = var.db_username
}

output "db_password" {
  description = "DB password"
  value       = var.db_password
  sensitive   = true
}