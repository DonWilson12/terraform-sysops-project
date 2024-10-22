# Attached public subnet to public route table.
resource "aws_route_table_association" "public-RTA1" {
  subnet_id      = aws_subnet.public-1.id
  route_table_id = aws_route_table.public-RT.id
}

resource "aws_route_table_association" "public-RTA2" {
  subnet_id      = aws_subnet.public-2.id
  route_table_id = aws_route_table.public-RT.id
}

# Attached application subnet to application route table.
resource "aws_route_table_association" "application-RTA1" {
  subnet_id      = aws_subnet.app-1.id
  route_table_id = aws_route_table.app-RT1.id
}

resource "aws_route_table_association" "application-RTA2" {
  subnet_id      = aws_subnet.app-2.id
  route_table_id = aws_route_table.app-RT2.id
}

# Attached backend subnet to backend route table.
resource "aws_route_table_association" "backend-RTA1" {
  subnet_id      = aws_subnet.backend-1.id
  route_table_id = aws_route_table.backend-RT1.id
}

resource "aws_route_table_association" "backend-RTA2" {
  subnet_id      = aws_subnet.backend-2.id
  route_table_id = aws_route_table.backend-RT2.id
}
