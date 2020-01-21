module "lookup" {
  source  = "app.terraform.io/hashijit/lookup/random"
  version = "0.0.1"
}

resource "null_resource" "rotate" {
  triggers = {
    connection_string = "${module.lookup.connection_string}"
  }
}

output "database_connection_string" {
  value = "mysql://${module.lookup.connection_string}"
}
