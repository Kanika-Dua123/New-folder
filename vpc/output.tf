output "vpc1" {
  description = "ID of project VPC"
  value       = aws_vpc.vpc.id
}
output "vpc2" {
  description = "ID of project VPC"
  value       = aws_subnet.public.id
}