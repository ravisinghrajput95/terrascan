resource "aws_security_group" "security_group" {
  name        = "security group"
  description = "security group for vulnerable ec2 instance"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}