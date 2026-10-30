variable "instance_name" {
  description = "Name tag and identifier for the EC2 instance."
  type        = string
  nullable    = false
}

variable "ami_id" {
  description = "AMI ID for the instance. If left blank, you can supply one or use a default."
  type        = string
  nullable    = false
}

variable "instance_type" {
  description = "The instance type to use (e.g., t3.micro, t3.medium)."
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "The VPC subnet ID where the instance will be launched."
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with."
  type        = list(string)
  default     = []
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance."
  type        = bool
  default     = false
}

variable "root_volume_size" {
  description = "Size of the root EBS volume in gigabytes."
  type        = number
  default     = 20
}

variable "tags" {
  description = "Tags applied to the EC2 instance."
  type        = map(string)
  default     = {}
}
