variable "key_name" {
  description = "The name for the key pair"
  type        = string
}

variable "public_key" {
  description = "The public key material"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "sg_description" {
  description = "The security group description"
  default     = "Jenkins instance"
  type        = string
}

variable "region" {
  description = "region for my instance"
  default     = "us-west-2"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "instance_ami" {
  description = "AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to start. Updates to this field will trigger a stop/start of the EC2 instance"
  type        = string
}








  