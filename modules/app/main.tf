resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ec2.id
  instance_type = var.instance_type
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = var.component
  }
}


resource "null_resource" "ansible" {

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = var.ssh_user
      password = var.ssh_password
      host     = aws_instance.ec2.public_ip
    }

    inline = [
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/iteration-1/expense-ansible expense.yml -e role_name=${var.component} -e env=${var.env}"
    ]


  }
}


resource "aws_route53_record" "route" {
  name    = "${var.component}-${var.env}"
  type    = "A"
  zone_id = var.zone_id
  records = [aws_instance.ec2.private_ip]
  ttl     = 30

}