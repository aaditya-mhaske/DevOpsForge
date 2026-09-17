output "instance_id" {
  description = "ID of the DevOpsForge EC2 instance"
  value       = aws_instance.devopsforge.id
}

output "instance_type" {
  description = "EC2 instance type"
  value       = aws_instance.devopsforge.instance_type
}