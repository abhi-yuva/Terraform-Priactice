resource "aws_instance" "from-terraform" {
  ami                    = var.os-name
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    name        = var.tag-name
    description = var.ec2-description
  }
}
