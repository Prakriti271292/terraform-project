variable "instance_type" {
     default = "t2.micro"
}
variable "ami" {
     default = "ami-123"
}
variable "igw_name" {
     default= "chochu"
}
variable "allowed_ports" {
    type = list(string)
    default = ["22","80"]
}
variable "private_key" {}

