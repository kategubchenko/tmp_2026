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
  name            = "cli-from_provider-upd"
  environment_id  = data.scalr_environment.test.id
  deletion_protection_enabled = "false"
}
