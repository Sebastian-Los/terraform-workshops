//terraform {
//  backend "gcs" {
//    bucket = "<project-name>-tf-state"
//    prefix = "tfstate"
//  }
//}

//terraform {
//  backend "remote" {
//    hostname = "app.terraform.io"
//    organization = "<organization-name>"
//
//    workspaces {
//      name = "<worksapce-name>"
//    }
//  }
//}