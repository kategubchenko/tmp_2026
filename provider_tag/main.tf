terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "3.5.0"
        }
    }
}


resource "scalr_tag" "example-x" {
  name       = "tag-xx"
}
resource "scalr_tag" "example-xxx" {
  name       = "tag-xxxy"
}
