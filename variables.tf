variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "aws Region"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "CIDR block for the private subnet"
}

variable "availability_zone" {
  type        = string
  default     = "ap-south-1a"
  description = "Availability zone for the subnets"
}

variable "ami_id" {
  type        = string
  default     = "ami-08e3b3155fc937a94"
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type for the EC2 instance"
}

variable "instance_count" {
  type        = number
  default     = 1
  description = "Number of EC2 instances"
}