resource "aws_acm_certificate" "certificate_subdomain" {
  domain_name       = "${lower(var.environment)}.${var.default_example_domain}"
  validation_method = "DNS"
}