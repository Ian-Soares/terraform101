variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "EC2 Instance name"
  type        = string
  default     = "terraform101-instance"
}

variable "tags" {
  description = "Tags for sandbox environment"
  type        = map(any)
  default = {
    owner      = "user.name"
    department = "IT"
  }
}

variable "subnet_id" {
  description = "EC2 Instance subnet ID"
  type        = string
  default     = "subnet-08e7d8afaebdd1dc8"
}
