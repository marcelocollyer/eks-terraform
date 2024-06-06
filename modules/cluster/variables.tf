variable "project_name" {
  default     = "eksproject"
  type        = string
  description = "Name of the project"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}