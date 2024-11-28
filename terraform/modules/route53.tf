# Route 53 Hosted Zone

resource "aws_route53_zone" "primary" {
  name = "teamcharlie-2048.com"
}

# Route 53 Record
resource "aws_route53_record" "www-dev" {
  zone_id = aws_route53_zone.example.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 5

  weighted_routing_policy {
    weight = 10
  }

  set_identifier = "dev"
  records        = ["dev.teamcharlie-2048.com"]
}

resource "aws_route53_record" "www-live" {
  zone_id = aws_route53_zone.example.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 5

  weighted_routing_policy {
    weight = 90
  }

  set_identifier = "live"
  records        = ["live.teamcharlie-2048.com"]
}