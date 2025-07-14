/*
resource "aws_instance" "chochu" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sec_grp.id]
  associate_public_ip_address = true

  tags = {
    Name = "Hello World"
  }
}
*/
