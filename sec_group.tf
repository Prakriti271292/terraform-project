resource "aws_security_group" "sec_grp" {
   name="test"
   description="allows inobund and outbound traffic"
   vpc_id = aws_vpc.main.id

   tags = {
     Name = "allow"
     }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tcp" {
    security_group_id = aws_security_group.sec_grp.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.from_port 
    to_port = var.to_port
    ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
    security_group_id = aws_security_group.sec_grp.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.from_port 
    to_port = var.to_port
    ip_protocol = "http"
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
    security_group_id = aws_security_group.sec_grp.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = var.from_port 
    to_port = var.to_port
    ip_protocol = "ssh"
}

