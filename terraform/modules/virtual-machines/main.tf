resource "google_compute_instance" "main" {
  machine_type              = var.machine_type
  name                      = var.name
  allow_stopping_for_update = true
  zone                      = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
      size  = 10
      type  = "pd-ssd"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  service_account {
    scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

//  provisioner "remote-exec" {
//    inline = ["echo 'Hello World'"]
//  }

}

resource "google_compute_firewall" "default_f" {
  name    = "web-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}
