resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name        = "vprofile-igw"
    Project     = var.project_name
    Environment = var.EnvType
  }
}
