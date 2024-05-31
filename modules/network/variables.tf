variable "cidr_block" {
  type        = string
  description = "Networkking CIDR block to be used for the VPC"
}
variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}