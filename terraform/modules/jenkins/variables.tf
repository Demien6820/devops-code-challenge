variable "instance_type" {
  description = "The type of EC2 instance to use for Jenkins."
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the Jenkins EC2 instance."
  type        = string
}

variable "jenkins_admin_username" {
  description = "The admin username for Jenkins."
  type        = string
  default     = "admin"
}

variable "jenkins_admin_password" {
  description = "The admin password for Jenkins."
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "The VPC ID where the EC2 instance will be launched."
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched."
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instance."
  type        = list(string)
}