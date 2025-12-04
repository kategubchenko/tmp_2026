terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "3.5.0"
        }
    }
}

data "scalr_environment" test {
  name = "Environment-A"
}

resource "scalr_workspace" "cli-driven" {
  name            = "cli-from_provider"
  environment_id  = data.scalr_environment.test.id
  deletion_protection_enabled = "false"
}

resource "scalr_tag" "example3" {
  name       = "tag-3"
}

variable "run_id" {
  default = "run_id_2"
  sensitive = true
}

variable "sleep_time" {
  default = 20
}

resource "random_integer" "timeout" {
  count = 2
 
  min = 32
  max = 160

  keepers = {
    run_id = var.run_id
  }
}



resource "null_resource" "env_vars" {
  triggers = {
    run_id = var.run_id
  }
  provisioner "local-exec" {
    command = "env"
  }
}

