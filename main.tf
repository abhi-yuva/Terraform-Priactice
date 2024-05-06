resource "aws_s3_bucket" "my-bucket" {
  bucket = "terraform-backend-bucket"

  tags = {
    Name        = "Bucket from Terraform"
  }
}

# resource "aws_vpc" "my_vpc" {
#   cidr_block = "10.0.0.0/24"
#   tags = {
#     Name = "my-vpc"
#   }
  
# }

# resource "aws_security_group" "my-security-group" {
#   vpc_id = aws_vpc.my_vpc.id
#   tags = {
#     Name = "my-security-group"
#   }
  
#   depends_on = [ aws_vpc.my_vpc ]
# }

# resource "aws_instance" "my-ec2" {
#   ami           = var.image
#   instance_type = var.type


#   tags = {
#     Name = "Through Terraform"
#   }

#   depends_on = [ 
#     aws_security_group.my-security-group
#    ]
# }