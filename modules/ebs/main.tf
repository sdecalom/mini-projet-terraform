 resource "aws_ebs_volume" "ebs_volume" {
   availability_zone = "us-east-1a"
   size = "52"
   tags = "test"
 }