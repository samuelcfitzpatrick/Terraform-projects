resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.app1-PROD-VPC.id

  tags = {
    Name    = "app1-PROD-VPC"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
