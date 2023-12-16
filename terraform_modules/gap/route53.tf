resource "aws_route53_record" "acm_cert" {
  name    = var.acm_cert_gap_cm_luciferous_link.record_name
  type    = "CNAME"
  zone_id = var.zone_id_luciferous_link
  ttl     = 300
  records = [var.acm_cert_gap_cm_luciferous_link.record_value]
}
