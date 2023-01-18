resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "igw"
  }
}
 
resource "aws_egress_only_internet_gateway" "eigw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "eigw"
  }
}

