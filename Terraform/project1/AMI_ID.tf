data "aws_ami" "T3_ami_ID" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

output "Instance_id" {
  description = "AMI ID of ubuntu instance"
  value       = data.aws_ami.T3_ami_ID.id
}
