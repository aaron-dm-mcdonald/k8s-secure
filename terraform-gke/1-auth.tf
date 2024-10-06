terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }

  backend "gcs" {
    bucket      = "amcdonald-k8s-state-2"
    prefix      = "terraform/state"
    credentials = "key.json"
  }

}

provider "google" {
  # Configuration options
  project     = var.project
  region      = "us-central1"
  zone        = var.zone
  credentials = "key.json"
}


