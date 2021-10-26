variable "var_one" {
  default = "default_var_one"
}
variable "var_two" {
  default = "default_var_two"
}
variable "var_three" {
  default = "default_var_three"
}
variable "var_four" {
  default = "default_var_four"
}

resource "null_resource" "print_envvars" {
  triggers = {
    uuid = "${uuid()}" # Force to run each time
  }

  provisioner "local-exec" {
    command = "env"
  }
}

output var_one {
  value = var.var_one
}

output var_two {
  value = var.var_two
}

output var_three {
  value = var.var_three
}
