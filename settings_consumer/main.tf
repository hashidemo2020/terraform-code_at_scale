module "lookup" {
  source  = "app.terraform.io/hashijit/lookup/random"
  version = "0.0.1"
}

output "database_connection_string" {
  value = "mysql://${module.lookup.connection_string}"
}
