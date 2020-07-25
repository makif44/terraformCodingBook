provider "aws" {
  profile = "default"
  version = "~> 2.70"
  region  = "us-east-1"
}
resource "aws_instance" "example" {
  ami           = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
  tags = {
    Name = "web_server"
  }
    depends_on = [aws_vpc.main]
}