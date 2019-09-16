provider "aws" {}
terraform {
  backend "s3" {
    bucket  = "terraformmystate"
    key     = "state_file/terraform.tfstate"
    encrypt = "true"
    region  = "ap-south-1"
  }
}

resource "tivo_shared_service" "example" {
    mso_partner_id = "${var.msoPartnerId}"
    out_of_home_restriction = "${var.outOfHomeRestriction}"
}

