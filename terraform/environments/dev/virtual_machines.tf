//data "google_compute_image" "my-instance-image" {
//  project = local.project
//  name    = "my-instance-image-v1"
//}
//
//module "virtual-machines" {
//  source          = "../../modules/virtual-machines"
//
//  boot_disk_image = data.google_compute_image.my-instance-image.self_link
//  machine_type    = "n1-standard-1"
//  name            = "my-instance"
//  zone            = local.zone
//}