resource "aws_security_group" "sec_grp" {
   name="test"
   description="allows inobund and outbound traffic"
   vpc_id = aws_vpc.main.id

   tags = {
     Name = "allow"
     }
}

resource "aws_vpc_security_group_ingress_rule" "allow" {
    for_each = toset(var.allowed_ports)
    security_group_id = aws_security_group.sec_grp.id
    cidr_ipv4 = "0.0.0.0/0"
    from_port = each.value
    to_port = each.value
    ip_protocol = "tcp"
}



