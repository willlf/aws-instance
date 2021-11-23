resource "aws_security_group" "demo" {
  name        = "${var.instance_tag}-sg"
  description = "Security Group for the demo willfarley EC2 Instance"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks   = ["${var.cidr_block_inbound}"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
