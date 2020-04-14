provider "google" {
  credentials = file("security/landing-zone-demo-1c3ccf5ae919.json")
  region      = "us-east1"
  version     = "~> 2.17.0"
}

provider "google-beta" {
  credentials = file("security/landing-zone-demo-1c3ccf5ae919.json")
  region      = "us-east1"
  version     = "~> 3.17.0"
}
