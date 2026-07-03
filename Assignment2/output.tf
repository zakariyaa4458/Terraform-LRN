output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web.id
}


output "instance_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}



output "instance_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.web.public_dns
}