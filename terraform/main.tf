provider "google" {
  version = "1.4.0"
  project = "infra-208108"
  region = "europe-west1"
}
resource "google_compute_instance" "app" {
  name = "reddit-app"
  machine_type = "g1-small"
  zone = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "reddit-base-1531474243"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}

