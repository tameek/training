#
# DO NOT DELETE THESE LINES!
#
# Your subnet ID is:
#
#     subnet-d56fbc8e
#
# Your security group ID is:
#
#     sg-57e40c2a
#
# Your AMI ID is:
#
#     ami-c9580bde
#
# Your Identity is:
#
#     datapipe-silkworm
#

provider "aws" {
  access_key = "AKIAJJTO5BVZCLHRG3RA"
  secret_key = "VfOebGuAesa/jcDK+fgvpUYkwRXKUUea42HIcsIQ"
  region     = "us-east-1"
}
resource "aws_instance" "datapipe-dog"{
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-57e40c2a"]
  subnet_id = "subnet-d56fbc8e"

tags {
        Identity = "datapipe-dog"
        Name = "thenderson"
        Env = "lab"
    }
}

#output "State" {
#    value = "${instance_state}"
#}
#module "test_module" {
#source = "example-module"
#}
