resource "aws_instance" "chochu" {
  ami           =  var.ami
  instance_type =  var.instance_type
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sec_grp.id]
  associate_public_ip_address = true

  count = 2

  tags = {
    Name = "Hello World${count-index}"
  }
}
