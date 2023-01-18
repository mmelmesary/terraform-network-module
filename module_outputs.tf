output "vpc-id" {
  value = aws_vpc.main.id
}

output "public-subnet-id" {
  value = aws_subnet.public-subnet.id
}

output "private-subnet-id" {
  value = aws_subnet.private-subnet.id
}

output "igw-id" {
  value = aws_internet_gateway.igw.id
}