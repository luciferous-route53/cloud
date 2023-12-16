terraform {
  required_version = "~>1.6.4"

  backend "s3" {
    bucket = "luciferous-route53-prepare-bucketterraformstates-9e1ezde5g6yh"
    key = "cloud/cloud.tfstate"
    dynamodb_table = "luciferous-route53-prepare-TableTerraformLocks-1JTTJN9PUUZSR"
    region = "ap-northeast-1"
  }
}

module "common" {
  source = "./terraform_modules/common"

  system_name             = var.system_name
  region                  = var.region
  base64_gzip_tfvars_json = var.BASE64_GZIP_TFVARS_JSON

  zone_id_luciferous_link         = var.zone_id_luciferous_link
  acm_cert_gap_cm_luciferous_link = var.acm_cert_gap_cm_luciferous_link
}

variable "system_name" {
  type     = string
  nullable = false
  default  = "luciferous-route53"
}

variable "region" {
  type     = string
  nullable = false
  default  = "ap-northeast-1"
}

variable "BASE64_GZIP_TFVARS_JSON" {
  type      = string
  nullable  = false
  sensitive = true
}

variable "zone_id_luciferous_link" {
  type     = string
  nullable = false
}

variable "acm_cert_gap_cm_luciferous_link" {
  nullable = false
  type = object({
    record_name  = string
    record_value = string
  })
}
