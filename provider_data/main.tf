terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "3.12.0"
        }
    }
}
variable "vcs_name" {
}

data "scalr_vcs_provider" "by_name" {
  name       = var.vcs_name
}

output "vcs_provider_id" {
  value = data.scalr_vcs_provider.by_name.id
  }
