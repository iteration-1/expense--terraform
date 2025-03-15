resource "aws_instance" "frontend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09880b52d970e879b"]

  tags = {
    Name = "frontend"
  }

}
resource "aws_instance" "mysql" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09880b52d970e879b"]


  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "backend" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09880b52d970e879b"]


  tags = {
    Name = "backend"
  }
}
