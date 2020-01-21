# Random number generator
resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }
  byte_length = 8
}

# Output random number
output "uuid" {
  value = "${random_id.random.dec}"
}

# Random pet name
resource "random_pet" "random" {
  keepers {
    uuid = "${uuid()}"
  }
}

# Output pet name
output "server" {
  value = "${random_pet.random.id}"
}

# Random password
resource "random_string" "random" {
  keepers {
    uuid = "${uuid()}"
  }
  length  = 8
  special = false
}

# Output password
output "password" {
  value     = "${random_string.random.id}"
  sensitive = true
}
