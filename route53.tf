resource "aws_route53_zone" "backend-zone" {
  name = var.backend-domain
}

resource "aws_route53_record" "backend-record" {
  zone_id = aws_route53_zone.backend-zone.zone_id
  name = var.backend-domain
  type = "A"
  ttl = 300
  records = [ aws_eip.ip.public_ip ]
}

resource "aws_route53_zone" "frontend-zone" {
  name = var.frontend-domain
}

resource "aws_route53_record" "frontend-record" {
  zone_id = aws_route53_zone.frontend-zone.zone_id
  name = var.frontend-domain
  type = "A"
  ttl = 300
  records = [ aws_eip.ip.public_ip ]
}