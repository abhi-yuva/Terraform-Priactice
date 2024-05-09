resource "aws_instance" "my-ec2" {
  ami           = var.image
  instance_type = var.type
  count         = length(var.environment)


  tags = {
    Name = var.environment[count.index]
  }

}