resource "aws_instance" "my-ec2" {
  ami           = var.image
  instance_type = var.type


  tags = {
    Name = "Through Terraform"
  }
}