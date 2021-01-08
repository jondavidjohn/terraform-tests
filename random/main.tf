resource "random_pet" "animal_one" {
  keepers = {
    uuid = "firstpet" # Force a new name each time
  }
  length = 3
}

resource "random_pet" "animal_three" {
  keepers = {
    uuid = "thirdpet" # Force a new name each time
  }
  length = 2
}

output "random_one" {
  value = "${random_pet.animal_one.id}"
}

output "random_three" {
  value = "${random_pet.animal_three.id}"
}
