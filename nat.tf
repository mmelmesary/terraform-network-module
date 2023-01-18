resource "aws_eip" "nat-ip" {
  vpc   = true
   tags = {
    Name = "nat-ip"
  }

}



resource "aws_nat_gateway" "nat-gateway" {
  allocation_id = aws_eip.nat-ip.id
  subnet_id     = aws_subnet.public-subnet.id

  tags = {
    Name = "NAT GW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.igw]
}