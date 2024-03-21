resource "aws_eip" "nat-eip-1" {
  domain = "vpc"

  tags = {
    Name = "nat-eip-1 for pub_sub-1"
  }
}

resource "aws_eip" "nat-eip-2" {
  domain = "vpc"

  tags = {
    Name = "nat-eip-2 for pub_sub-2"
  }
}

resource "aws_nat_gateway" "nat-gw-1" {
  allocation_id = aws_eip.nat-eip-1.id
  subnet_id = abs()

  tags = {
   Name 
  }
}

resource "aws_nat_gateway" "nat-gw-2" {
  allocation_id = aws_eip.nat-eip-2.id
  subnet_id = abs()

  tags = {
   Name 
  }
}