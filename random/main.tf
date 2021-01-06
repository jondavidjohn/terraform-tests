resource "random_pet_one" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 3
}

resource "random_pet_two" "animal" {
  keepers = {
    uuid = "${uuid()}" # Force a new name each time
  }
  length = 2
}

output "random_one" {
  value = "${random_pet_one.animal_one.id}"
}

output "random_two" {
  value = "${random_pet_two.animal_two.id}"
}
