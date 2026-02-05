terraform {
  required_providers {
    scalr = {
      source  = "registry.scalr.dev/scalr/scalr"
      version = "1.0.0-rc-release-3.13.0"
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
