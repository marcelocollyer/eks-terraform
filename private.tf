
resource "aws_subnet" "eks_subnet_private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "us-east-1a"

  tags = merge(
    local.tags,
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
    local.tags,
    {
      Name                              = "${var.project_name}_subnet_private_1b"
      "kubernetes.io/role/internal-elb" = 1
    }
  )
}