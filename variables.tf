variable "cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "Networkking CIDR block to be used for the VPC"
}

variable "project_name" {
  default     = "eksproject"
  type        = string
  description = "Name of the project"
}

variable "region" {
  default     = "us-east1"
  type        = string
  description = "AWS region to deploy resources in"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all AWS resources"
}