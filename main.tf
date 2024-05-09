resource "aws_instance" "my-ec2" {
  ami           = var.image
  instance_type = var.type
  count = 2


  tags = {
    Name = "Through Terraform"
  }

}