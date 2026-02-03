terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 7.0.0, < 8.0.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 7.0.0, < 8.0.0"
    }
  }

}

resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo 'Executing a one-time task with null_resource'"
  }
}

resource "google_storage_bucket" "static-site" {
  name          = "random-name-for-bucket"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true
}



