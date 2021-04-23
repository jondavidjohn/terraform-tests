resource "random_pet" "animal_one" {
  keepers = {
    uuid = "firstpet" # Force a new name each time
  }
  length = 3
}

resource "random_pet" "animal_two" {
  keepers = {
    uuid = "secondpet" # Force a new name each time
  }
  length = 4
}

resource "random_pet" "animal_three" {
  keepers = {
    uuid = "thirdpet" # Force a new name each time
  }
  length = 3
}

resource "random_pet" "animal_four" {
  keepers = {
    uuid = "fourpet" # Force a new name each time
  }
  length = 3
}

output "random_one" {
  value = "${random_pet.animal_one.id}"
}

output "random_two" {
  value = "${random_pet.animal_two.id}"
}

output "random_three" {
  value = "${random_pet.animal_three.id}"
}
