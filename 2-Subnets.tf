#These are   for  public

resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.app1-PROD-VPC.id
  cidr_block              = "10.72.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

#these are for private
resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.app1-PROD-VPC.id
  cidr_block        = "10.72.11.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private-us-east-1a"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.app2-Test-VPC.id
  cidr_block        = "10.71.12.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}


resource "aws_subnet" "private-us-east-1d" {
  vpc_id            = aws_vpc.app3-DEV-VPC.id
  cidr_block        = "10.70.14.0/24"
  availability_zone = "us-east-1d"

  tags = {
    Name    = "private-us-east-1d"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}
