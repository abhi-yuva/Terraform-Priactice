output "ami" {
    description = "AMI of EC2 Machine"
    value = aws_instance.from-terraform.ami 
}

output "instance_id" {
    description = "Instance ID of EC2 Machine"
    value = aws_instance.from-terraform.id
}

output "public_ip" {
    description = "Public IP of EC2 Machine"
    value = aws_instance.from-terraform.public_ip
}

output "private_ip" {
    description = "Private IP of EC2 Machine"
    value = aws_instance.from-terraform.private_ip
}

output "Instacne_ARN" {
    value = aws_instance.from-terraform.arn
  
}