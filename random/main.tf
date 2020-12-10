resource "random_pet" "animal_one" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 3
}

resource "random_pet" "animal_two" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 2
}

output "random_one" {
  value = "${random_pet.animal_one.id}"
}

output "random_two" {
  value = "${random_pet.animal_two.id}"
}
