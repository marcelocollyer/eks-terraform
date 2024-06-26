
resource "aws_subnet" "eks_subnet_private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "us-east-1a"

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}_subnet_private_1a"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "us-east-1b"

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}_subnet_private_1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_private_1c" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "us-east-1c"

  tags = merge(
    var.tags,
    {
      Name                              = "${var.project_name}_subnet_private_1c"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}

resource "aws_route_table_association" "eks_rtb_assoc_private_1a" {
  subnet_id      = aws_subnet.eks_subnet_private_1a.id
  route_table_id = aws_route_table.eks_private_route_table_1a.id
}

resource "aws_route_table_association" "eks_rtb_assoc_private_1b" {
  subnet_id      = aws_subnet.eks_subnet_private_1b.id
  route_table_id = aws_route_table.eks_private_route_table_1b.id
}

resource "aws_route_table_association" "eks_rtb_assoc_private_1c" {
  subnet_id      = aws_subnet.eks_subnet_private_1c.id
  route_table_id = aws_route_table.eks_private_route_table_1c.id
}