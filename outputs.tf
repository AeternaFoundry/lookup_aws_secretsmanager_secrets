output "secretsmanager_secrets_lookup_id" {
  description = "Map of id values across all secretsmanager_secrets_lookup, keyed the same as var.secretsmanager_secrets_lookup"
  value       = { for k, v in data.aws_secretsmanager_secrets.secretsmanager_secrets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secretsmanager_secrets_lookup_arns" {
  description = "Map of arns values across all secretsmanager_secrets_lookup, keyed the same as var.secretsmanager_secrets_lookup"
  value       = { for k, v in data.aws_secretsmanager_secrets.secretsmanager_secrets_lookup : k => v.arns if v.arns != null && length(v.arns) > 0 }
}
output "secretsmanager_secrets_lookup_filter" {
  description = "Map of filter values across all secretsmanager_secrets_lookup, keyed the same as var.secretsmanager_secrets_lookup"
  value       = { for k, v in data.aws_secretsmanager_secrets.secretsmanager_secrets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "secretsmanager_secrets_lookup_names" {
  description = "Map of names values across all secretsmanager_secrets_lookup, keyed the same as var.secretsmanager_secrets_lookup"
  value       = { for k, v in data.aws_secretsmanager_secrets.secretsmanager_secrets_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "secretsmanager_secrets_lookup_region" {
  description = "Map of region values across all secretsmanager_secrets_lookup, keyed the same as var.secretsmanager_secrets_lookup"
  value       = { for k, v in data.aws_secretsmanager_secrets.secretsmanager_secrets_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

