# Creating public subnets
resource "aws_subnet" "public-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.ZONE1
  map_public_ip_on_launch = true

  tags = {
    Name        = "public-subnet-1"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

resource "aws_subnet" "public-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.ZONE2
  map_public_ip_on_launch = true

  tags = {
    Name        = "public-subnet-2"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

# Creating application subnets
resource "aws_subnet" "app-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.ZONE1

  tags = {
    Name        = "app-subnet-1"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

resource "aws_subnet" "app-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.ZONE2

  tags = {
    Name        = "app-subnet-2"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

# Creating backend subnets
resource "aws_subnet" "backend-1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = var.ZONE1

  tags = {
    Name        = "backend-subnet-1"
    Project     = var.project_name
    Environment = var.EnvType
  }
}

resource "aws_subnet" "backend-2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = var.ZONE2

  tags = {
    Name        = "backend-subnet-2"
    Project     = var.project_name
    Environment = var.EnvType
  }
}
