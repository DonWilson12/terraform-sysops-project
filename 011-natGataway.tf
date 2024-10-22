resource "aws_nat_gateway" "nat1" {
  allocation_id = aws_eip.eip_nat1.id
  subnet_id     = aws_subnet.public-1.id
  tags = {
    Name        = var.project_name
    Environment = var.EnvType
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.eip_nat2.id
  subnet_id     = aws_subnet.public-2.id

  tags = {
    Name        = var.project_name
    Environment = var.EnvType
  }
}
