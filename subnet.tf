resource "aws_subnet" "eks_subnet_public_1a" {
    vpc_id = aws_vpc.eks_vpc.id
    cidr_block = cidrsubnet(var.cidr_block, 8, 1)
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = merge(
        local.tags,
        {
            Name = "eks_subnet_public_1a"
        }
    )
}

resource "aws_subnet" "eks_subnet_public_1b" {
    vpc_id = aws_vpc.eks_vpc.id
    cidr_block = cidrsubnet(var.cidr_block, 8, 2)
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true

    tags = merge(
        local.tags,
        {
            Name = "eks_subnet_public_1b" 
        }
    )
}

resource "aws_subnet" "eks_subnet_private_1a" {
    vpc_id = aws_vpc.eks_vpc.id
    cidr_block = cidrsubnet(var.cidr_block, 8, 3)
    availability_zone = "us-east-1a"

    tags = merge(
        local.tags,
        {
            Name = "eks_subnet_private_1a"
        }
    )
}

resource "aws_subnet" "eks_subnet_private_1b" {
    vpc_id = aws_vpc.eks_vpc.id
    cidr_block = cidrsubnet(var.cidr_block, 8, 4)
    availability_zone = "us-east-1b"

    tags = merge(
        local.tags,
        {
            Name = "eks_subnet_private_1b"
        }
    )
}