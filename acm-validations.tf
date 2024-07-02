resource "aws_route53_record" "validation_acm" {
  for_each = {
    for dvo in aws_acm_certificate.certificate_examples_subdomains.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.primary.id
}

resource "aws_acm_certificate_validation" "validation" {
  certificate_arn         = aws_acm_certificate.certificate_examples_subdomains[0].arn
  validation_record_fqdns = [for record in aws_route53_record.validation_acm : record.fqdn]
}
