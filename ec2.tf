resource "aws_instance" "app_server" {
  ami           = "ami-0aaa5410833273cfe"
  instance_type = "t2.micro"
  key_name = "dc-login"

  tags = {
    Name = "Describing-cities"
  }
}