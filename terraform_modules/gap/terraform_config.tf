terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.31"
    }
  }
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
