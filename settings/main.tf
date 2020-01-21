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
