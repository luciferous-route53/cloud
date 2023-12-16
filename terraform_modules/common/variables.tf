variable "system_name" {
  type     = string
  nullable = false
}

variable "region" {
  type     = string
  nullable = false
}

variable "base64_gzip_tfvars_json" {
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