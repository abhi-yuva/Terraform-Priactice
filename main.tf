resource "aws_vpc" "my-vpc" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_security_group" "my-sercurity-group" {
  name        = "my-security-group"
  description = "Created from Terraform"
  vpc_id      = aws_vpc.my-vpc.id

  ingress  {
    description = "ingress rules"
    protocol    = "https"
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress  {
    description = "ingress rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}


resource "aws_instance" "from-terraform" {
  ami                    = var.os-name
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.my-sercurity-group.id]

  tags = {
    name        = var.tag-name
    description = var.ec2-description
  }
}

# resource "aws_instance" "from-terraform" {
#   # count = 2
#   ami                    = var.os-name
#   instance_type          = var.instance_type
#   vpc_security_group_ids = var.sg_ids

#   tags = {
#     name        = var.tag-name
#     description = var.ec2-description
#   }
# }


# Module Usage
# while using modules try to comment the above code and run terraform init again and 
# use the modules

module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "m5x.large"
  vpc_security_group_ids = ["sg-12345678"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
