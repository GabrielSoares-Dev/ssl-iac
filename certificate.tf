resource "aws_acm_certificate" "certificate_examples_subdomains" {
  for_each          = var.example_subdomains
  domain_name       = "${each.value.name}.${var.default_example_domain}"
  validation_method = "DNS"
}