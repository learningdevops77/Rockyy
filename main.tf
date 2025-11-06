provider "aws" {
  access_key = "AKIAWZEHK5X3K5ZB72H7"
  secret_key = "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"
  
}

resource "aws_instance" "my_ec2" {
  
  ami = "ami-0305d3d91b9f22e84"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "New"
  
  root_block_device {
    volume_size = "20"
    volume_type = "gp3"
    delete_on_termination = "yes"
  }

  tags = {
    Name = "Admin-jenkins-server"
  }

}
