output "ami" {
    description = "AMI of EC2 Machine"
    # if you are using count value use the below code
    # value = aws_instance.from-terraform[count.index].ami
    value = aws_instance.from-terraform.ami 
}

output "instance_id" {
    description = "Instance ID of EC2 Machine"
    # if you are using count value use the below code
    # value = aws_instance.from-terraform[count.index].id
    value = aws_instance.from-terraform.id
}

output "public_ip" {
    description = "Public IP of EC2 Machine"
    # if you are using count value use the below code
    # value = aws_instance.from-terraform[count.index].public_ip
    value = aws_instance.from-terraform.public_ip
}

output "private_ip" {
    description = "Private IP of EC2 Machine"
    # if you are using count value use the below code
    # value = aws_instance.from-terraform[count.index].private_ip
    value = aws_instance.from-terraform.private_ip
}

output "Instacne_ARN" {
    # if you are using count value use the below code
    # value = aws_instance.from-terraform[count.index].arn
    value = aws_instance.from-terraform.arn
  
}