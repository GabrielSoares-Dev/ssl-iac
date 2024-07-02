data "aws_route53_zone" "primary" {
  name = var.default_example_domain
}