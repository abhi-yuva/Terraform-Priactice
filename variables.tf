variable "os-name" {
  type        = string
  description = "AMI Name"
  default     = "ami-008fe2fc65df48dac"
}

variable "instance_type" {
  type        = string
  description = "t2.micro"
  default = "t2.micro"
}

variable "sg_ids" {
  type        = set(string)
  description = "Security Groups"
  default     = ["sg-0db493613e588f05b"]
}

variable "region" {
    type = string
    description = "Default Region"
    default = "us-west-2"
}

variable "tag-name" {
    type = string
    description = "Name of your EC2 Instance"
    default = "Terraform-EC2"  
}

variable "ec2-description" {
    type = string
    description = "Description of EC2 Instance"
    default = "Created from Terraform"
  
}