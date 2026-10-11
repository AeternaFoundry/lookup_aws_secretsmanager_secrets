data "aws_secretsmanager_secrets" "secretsmanager_secrets_lookup" {
  for_each = var.secretsmanager_secrets_lookup

  region = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

