output "rds_endpoint" {
  description = "The database endpoint"
  value       = module.rds.db_endpoint
}

output "rds_username" {
  description = "The database username"
  value       = module.rds.db_username
}

output "rds_password" {
  description = "The database password"
  value       = module.rds.db_password
  sensitive   = true
}