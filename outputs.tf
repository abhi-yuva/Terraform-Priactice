output "public-ip" {
 # value = aws_instance.my-ec2.public_ip
  value = ["${aws_instance.my-ec2.*.public_ip}"]
}

output "private-ip" {
 # value = aws_instance.my-ec2.private_ip
  value = ["${aws_instance.my-ec2.*.private_ip}"]
}

output "instance-id" {
  # value = aws_instance.my-ec2[count.index].id
  value = ["${aws_instance.my-ec2.*.id}"]
}