variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy EKS cluster"
  type        = string
}

variable "subnet_tag_filter" {
  description = "Subnet tag name pattern (e.g., 'Our-Public-*')"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}
