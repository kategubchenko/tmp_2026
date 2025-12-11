terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "3.5.0"
        }
    }
}

variable "tag_count" {
  sensitive = false
  default = 1
}

resource "scalr_tag" "example-1" {
  count = var.tag_count
  name       = "tag-1-11${count.index}"
}
