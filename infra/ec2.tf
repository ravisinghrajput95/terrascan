resource "aws_instance" "vuln_ec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  user_data = <<EOF
#!/bin/bash
echo "db_password=supersecretpassword" >> /etc/db_config
EOF
}