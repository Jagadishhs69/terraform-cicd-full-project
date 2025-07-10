output "qa_instance_id" {
  value = module.ec2.instance_id
}

output "qa_instance_public_ip" {
  value = module.ec2.instance_public_ip
}

output "qa_rds_endpoint" {
  value = module.rds.rds_endpoint
}