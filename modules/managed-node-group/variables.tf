variable "project_name" {
  default     = "eksproject"
  type        = string
  description = "Name of the project"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create MNG"
}

variable "subnet_private_1a" {
  type        = string
  description = "Private subnet ID for AZ 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "Private subnet ID for AZ 1b"
}

variable "subnet_private_1c" {
  type        = string
  description = "Private subnet ID for AZ 1c"
}