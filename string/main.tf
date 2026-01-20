resource "random_string" "test" {
  count = var.string_count
  length = var.string_length
}

variable "string_count" {
  sensitive = false
  default = "2"
}

variable "string_length" {
  sensitive = false
  default = "122"
}
