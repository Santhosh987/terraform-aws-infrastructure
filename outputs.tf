output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_id" {
    value = aws_subnet.public.id
}

output "private_subnet_id" {
    value = aws_subnet.private.id
}

output "ec2_instance_id" {
    value = aws_instance.web[0].id
}

output "ec2_instance_public_ip" {
    value = aws_instance.web[0].public_ip
}

output "ec2_instance_private_ip" {
    value = aws_instance.web[0].private_ip
}