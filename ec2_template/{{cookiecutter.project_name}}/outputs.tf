output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.{{ cookiecutter.instance_name }}.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.{{ cookiecutter.instance_name }}.public_ip
}

