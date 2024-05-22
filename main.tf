resource "time_sleep" "wait" {
  create_duration = var.delay
}

resource "random_string" "random" {
  length  = 4
  upper   = false
  numeric = false
  special = false

  depends_on = [time_sleep.wait]
}