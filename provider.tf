provider "aws" {
  region = "${var.region}"
  assume_role {
    role_arn     = "arn:aws:iam::753646501470:role/willfarley-assumerole"
  }
}
