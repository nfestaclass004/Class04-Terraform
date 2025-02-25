#Define local values that will be called in Terraform
locals {
  owners = "${var.business_unit}"
  Environment = "${var.Environment}"
  #name "${var.Environment}-${var.business_unit}"
  commom_tags = {
    owners = local.owners
    Environment = local.Environment
  }
}
