resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}_subnet_public_1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}_subnet_public_1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_public_1c" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}_subnet_public_1c"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_route_table_association" "eks_rtb_assoc_1a" {
  subnet_id      = aws_subnet.eks_subnet_public_1a.id
  route_table_id = aws_route_table.eks_public_route_table.id
}

resource "aws_route_table_association" "eks_rtb_assoc_1b" {
  subnet_id      = aws_subnet.eks_subnet_public_1b.id
  route_table_id = aws_route_table.eks_public_route_table.id
}

resource "aws_route_table_association" "eks_rtb_assoc_1c" {
  subnet_id      = aws_subnet.eks_subnet_public_1c.id
  route_table_id = aws_route_table.eks_public_route_table.id
}