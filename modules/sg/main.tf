 #security group allow trafic in 80 443 and 22
 resource "aws_security_group" "security_group" {
    name = var.security_group_name
    description = "Rules for the module mini terraform"

    # Trafic entrant (Ingress)
    ingress {
        description = "Allow HTTP"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allow HTTPS"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allow SSH"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Trafic sortant (Egress)
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"       # -1 = tous les protocoles
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = var.security_group_tag
 }