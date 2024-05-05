output "public-ip" {
  value = aws_instance.my-ec2.public_ip
}

output "private-ip" {
  value = aws_instance.my-ec2.private_ip

}