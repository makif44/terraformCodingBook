resource "aws_subnet" "main" {
  vpc_id     = "vpc-04eedb18a08d3e62b"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "public_terraform_subnet"
  }
}