# Route table for public subnet.
resource "aws_route_table" "public-RT" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name        = "public-RT"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

# Route table for application subnet.
resource "aws_route_table" "app-RT1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat1.id
  }

  tags = {
    Name        = "app-RT1"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

resource "aws_route_table" "app-RT2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat2.id
  }

  tags = {
    Name        = "app-RT2"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

# Route table for backend subnet.
resource "aws_route_table" "backend-RT1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat1.id
  }

  tags = {
    Name        = "backend-RT1"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

resource "aws_route_table" "backend-RT2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat2.id
  }

  tags = {
    Name        = "backend-RT2"
    Project     = var.project_name
    Environment = var.EnvType
  }
}
