module "gap" {
  source = "../gap"

  zone_id_luciferous_link         = var.zone_id_luciferous_link
  acm_cert_gap_cm_luciferous_link = var.acm_cert_gap_cm_luciferous_link
}