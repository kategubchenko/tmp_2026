
terraform {
    required_providers {
        scalr = {
            source = "registry.scalr.io/scalr/scalr"
            version= "3.13.1"
        }
    }
}

(* 
variable "pc_count" {
  sensitive = false
} *)

resource "scalr_provider_configuration" "kubernetes" {
  (* count = var.pc_count *)
  name       = "k8s"
  # account_id = "acc-svrcncgh453bi8g"
  custom {
    provider_name = "kubernetes"

    argument {
      name        = "host"
      value       = "https://kubernetes.io/flyscan1/hyperspectral/hydrocarbon-detection-quantification/cpp/0.11.0-rc4@sha256:096e5910715111c60af9d804a455471b626c20ded014bb226c7947decd81d07c"
      (* value       = "https://kubernetes.io/flyscan1/hyperspectral/hydrocarbon-detection-quantification/cpp/argus:0.11.0-rc4@sha256:096e5910715111c60af9d804a455471b626c20ded014bb226c7947decd81d07c" *)

      description = "The hostname (in form of URI) of the Kubernetes API."
    }
  }
}
