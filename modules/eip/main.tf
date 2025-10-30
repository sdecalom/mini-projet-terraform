 #get public ip and put in file ip_ec2.txt
 resource "aws_eip" "eip" {
    domain = "vpc"

    provisioner "local-exec" {
      command = "echo The public IP address is ${aws_eip.eip.public_ip} > ip_ec2.txt"
    }
    tags = {
        Name = var.eip_tag
    }
 }