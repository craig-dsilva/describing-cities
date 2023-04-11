resource "aws_eip_association" "ip" {
  instance_id = aws_instance.app_server.id
  allocation_id = aws_eip.ip.allocation_id
}

resource "aws_eip" "ip" {
  vpc = true
}