variable "ebs_zone" {
    type = string
    default = "us-east-1a"
    description = "The availability Zone of the EBS volume"
}

variable "ebs_size" {
    type = number
    default = 8
    description = "The size of the  EBS volume in GiB"
}

variable "ebs_tag" {
  type = map
  default = {
    Name = "ebs-volume"
  }
  description = "The tags for the EBS volume"
}