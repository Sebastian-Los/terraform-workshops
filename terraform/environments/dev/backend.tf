//terraform {
//  backend "gcs" {
//    bucket = "los-tf-demo-dev-tf-state"
//    prefix = "tfstate"
//  }
//}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sebastian-los"

    workspaces {
      name = "terraform-workshops-dev"
    }
  }
}