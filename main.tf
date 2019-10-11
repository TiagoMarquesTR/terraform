provider "aws" {
  version = "~> 2.0"
  #access_key = "${var.access_key}"
  #secret_key = "${var.secret_key}"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  count = 2
  ami = "${var.amis["us-east-1"]}"
  instance_type = "t2.micro"
  key_name = "${var.key_name}"
  tags = {
    Name = "dev${count.index}"
  }

  vpc_security_group_ids = ["${aws_security_group.acess-ssh.id}"]
}
