# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
resource "google_compute_firewall" "allow-ssh-http" {
  name    = "allow-ssh-http"
  network = google_compute_network.main-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22","80","443"]
  }

  source_ranges = ["0.0.0.0/0"]
}