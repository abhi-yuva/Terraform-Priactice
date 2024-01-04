resource "aws_instance" "from-terraform" {
  # count = 2
  ami                    = var.os-name
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    name        = var.tag-name
    description = var.ec2-description
  }
}


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
