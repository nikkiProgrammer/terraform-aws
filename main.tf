provider "aws"{
  region=var.region
  access_key=var.aws_access_key
  secret_key=var.aws_secret_access_key
  #profile=var.profile
}

resource "aws_instance" "my_vm" {
 ami                       = "ami-065deacbcaac64cf2" //Ubuntu AMI
 instance_type             = "t2.micro"

 tags = {
   Name = "My EC2 instance",
 }
}
