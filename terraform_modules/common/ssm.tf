resource "aws_ssm_parameter" "tfvars_backup" {
  name  = "luciferous-route53-cloud-tfvars-backup"
  type  = "SecureString"
  value = var.base64_gzip_tfvars_json
}