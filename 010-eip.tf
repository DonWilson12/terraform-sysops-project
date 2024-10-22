# Elastic ip address for nat gateway in AZ 1.
resource "aws_eip" "eip_nat1" {
  depends_on = [aws_internet_gateway.gw]
}

# Elastic ip address for nat gateway in AZ 2.
resource "aws_eip" "eip_nat2" {
  depends_on = [aws_internet_gateway.gw]
}
