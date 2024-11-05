# this  makes  vpc.id which is aws_vpc.app1.id
resource "aws_vpc" "app1-PROD-VPC" {
  cidr_block = "10.72.0.0/16"

  tags = {
    Name = "app1-PROD-VPC"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}

resource "aws_vpc" "app2-Test-VPC" {
  cidr_block = "10.71.0.0/16"

  tags = {
    Name = "app2-Test-VPC"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}

resource "aws_vpc" "app3-DEV-VPC" {
  cidr_block = "10.70.0.0/16"

  tags = {
    Name = "app3-DEV-VPC"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }
}