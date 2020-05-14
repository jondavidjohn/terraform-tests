data "external" "slow-data-source" {
  program = ["sh", "-c", "sleep 600 && echo {}"]
}
