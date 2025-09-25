resource "aws_instance" "nginx_server" {
  ami           =  var.ami
  instance_type =  var.instance_type
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sec_grp.id]
  associate_public_ip_address = true

connection {
  type = "ssh"
  user = "ubuntu"
  private_key = var.private_key
  host = self.public_ip
  }

provisioner "remote-exec" {
  inline = [
    "sudo yum update -y"
    "sudo yum install -y nginx"
    "sudo systemctl start nginx"
    ]
  }

tags = {
  Name = "nginx-server"
}
