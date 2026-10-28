
# VPC details
output "vpc_a_id" {
  description = "Existing VPC A ID"
  value       = data.aws_vpc.vpc_a.id
}

output "vpc_a_cidr" {
  description = "Existing VPC A CIDR block"
  value       = data.aws_vpc.vpc_a.cidr_block
}

output "vpc_b_id" {
  description = "Existing VPC B ID"
  value       = data.aws_vpc.vpc_b.id
}

output "vpc_b_cidr" {
  description = "Existing VPC B CIDR block"
  value       = data.aws_vpc.vpc_b.cidr_block
}

# VPC peering
output "vpc_peering_id" {
  description = "Existing VPC peering connection ID"
  value       = data.aws_vpc_peering_connection.existing.id
}

# Subnets
output "vpc_a_public_subnet_id" {
  description = "VPC A public subnet ID"
  value       = data.aws_subnet.vpc_a_public.id
}

output "vpc_a_private_subnet_id" {
  description = "VPC A private subnet ID"
  value       = data.aws_subnet.vpc_a_private.id
}

output "vpc_b_private_subnet_id" {
  description = "VPC B private subnet ID"
  value       = data.aws_subnet.vpc_b_private.id
}

# Route tables
output "vpc_a_public_route_table_id" {
  description = "VPC A public route table ID"
  value       = data.aws_route_table.vpc_a_public.id
}

output "vpc_a_private_route_table_id" {
  description = "VPC A private route table ID"
  value       = data.aws_route_table.vpc_a_private.id
}

output "vpc_b_private_route_table_id" {
  description = "VPC B private route table ID"
  value       = data.aws_route_table.vpc_b_private.id
}

# Security groups
output "bastion_security_group_id" {
  description = "Bastion security group ID"
  value       = data.aws_security_group.bastion.id
}

output "app_a_security_group_id" {
  description = "App A security group ID"
  value       = data.aws_security_group.app_a.id
}

output "app_b_security_group_id" {
  description = "App B security group ID"
  value       = data.aws_security_group.app_b.id
}

# EC2 instances
output "bastion_instance_id" {
  description = "Bastion EC2 instance ID"
  value       = data.aws_instance.bastion.id
}

output "bastion_private_ip" {
  description = "Bastion private IP address"
  value       = data.aws_instance.bastion.private_ip
}

output "app_b_instance_id" {
  description = "Private App B EC2 instance ID"
  value       = data.aws_instance.app_b.id
}

output "app_b_private_ip" {
  description = "Private App B IP address"
  value       = data.aws_instance.app_b.private_ip
}
