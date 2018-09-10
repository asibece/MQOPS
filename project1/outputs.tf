output "instance_ips" {
  value = ["${Instances-aws_instance.TEST1.public_ip}"]
}
