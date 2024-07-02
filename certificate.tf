resource "aws_acm_certificate" "certificate_examples_subdomains" {
  for_each          = var.example_subdomains
  domain_name       = "${each.value.name}.${var.default_example_domain}"
  validation_method = "DNS"
  provider          = aws.us_east-2
}

resource "aws_acm_certificate_validation" "certificate_examples_validations" {
  for_each        = aws_acm_certificate.certificate_examples_subdomains
  certificate_arn = each.value.arn
  provider        = aws.us_east-2
}