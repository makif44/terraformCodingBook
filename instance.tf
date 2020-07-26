provider "aws" {
  profile = "default"
  version = "~> 2.70"
  region  = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
  key_name      = "ansible"
  subnet_id     =  aws_subnet.main.id
  associate_public_ip_address = true

  tags = {
    Name = "web_server"
  }
 
}