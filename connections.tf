provider "google" {
  credentials = file("/Users/ukatsir/projects/terraform/gcp-landing-zone/security/demod-landing-zone-510c0f69f59c.json")
  region      = "us-east1"
  # version     = "~> 2.17.0"
}


provider "google-beta" {
  credentials = file("/Users/ukatsir/projects/terraform/gcp-landing-zone/security/demod-landing-zone-510c0f69f59c.json")
  region      = "us-east1"
  # version     = "~> 3.17.0"
}

terraform {
  backend "gcs" {
    bucket = "demod-terraform-state"
    prefix = "terraform/demod-state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.5.0"
    }
    # kubernetes = {
    #   source  = "hashicorp/kubernetes"
    #   version = ">= 2.0.0"
    # }
  }
}