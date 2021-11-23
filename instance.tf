resource "aws_instance" "demo" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  subnet_id     = "${var.subnet_id}"

  vpc_security_group_ids = ["${aws_security_group.demo.id}"]

  tags = {
    Name = "${var.instance_tag}"
  }
}
