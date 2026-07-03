variable "instance_type" {
  type        = string
  description = "EC2 instance type for the wordpress"
  default     = "t3.micro"
}

variable "ami" {
  type        = string
  description = "ami for the instance"
  default     = "ami-0a989d06dca7dd6f4"
}

variable "aws_region" {
  default = "eu-west-2"
}