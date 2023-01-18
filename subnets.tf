resource "aws_subnet" "public-subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public-cidr-block
  availability_zone = "${var.region}a"
  tags = {
    Name = "public-subnet-01"
  } 
}

resource "aws_subnet" "private-subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private-cidr-block
  availability_zone = "${var.region}a"
  tags = {
    Name = "private-subnet-01"
  }
}
