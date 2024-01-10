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
    default = "EC2 Machine"  
}

variable "ec2-description" {
    type = string
    description = "Description of EC2 Instance"
    default = "Created from Terraform"
  
}

variable "security-group_ingress" {
  type        = map(object({
    description = string
      protocol    = string
      from_port   = number
      to_port     = number
      cidr_blocks = list(string) 
  }))
  description = "Security Group Values"
  default = {
    "first" = {
      description = "ingress rules"
      protocol    = "https"
      from_port   = 443
      to_port     = 443
      cidr_blocks = ["0.0.0.0/0"]
    },
    "second" = {
      description = "ingress rules1"
      protocol    = "http"
      from_port   = 80
      to_port     = 80
      cidr_blocks  = ["0.0.0.0/0"]
    }
  }


}