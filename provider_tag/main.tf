terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "3.5.0"
        }
    }
}


resource "scalr_tag" "example-1" {
  name       = "tag-1-comments4"
}
