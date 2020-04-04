resource "google_compute_firewall" "allow-tag-ssh" {
  count         = length(var.ssh_source_ranges) > 0 ? 1 : 0
  name          = "${var.network}-ingress-tag-ssh"
  description   = "Allow SSH to machines with the 'ssh' tag"
  network       = var.network
  project       = var.project_id
  source_ranges = var.ssh_source_ranges
  target_tags   = ["ssh"]

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_firewall" "allow-tag-http" {
  count         = length(var.http_source_ranges) > 0 ? 1 : 0
  name          = "${var.network}-ingress-tag-http"
  description   = "Allow HTTP to machines with the 'http-server' tag"
  network       = var.network
  project       = var.project_id
  source_ranges = var.http_source_ranges
  target_tags   = ["http-server"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

resource "google_compute_firewall" "allow-tag-https" {
  count         = length(var.https_source_ranges) > 0 ? 1 : 0
  name          = "${var.network}-ingress-tag-https"
  description   = "Allow HTTPS to machines with the 'https' tag"
  network       = var.network
  project       = var.project_id
  source_ranges = var.https_source_ranges
  target_tags   = ["https-server"]

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}
