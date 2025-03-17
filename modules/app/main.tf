resource "aws_instance" "ec2" {}

resource "null_resource" "ansible" {}

resource "aws_route53_record" "route" {
  name    = ""
  type    = ""
  zone_id = ""
}