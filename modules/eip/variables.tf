variable "eip_tag" {
  type = map
  default = {
    Name = "eip"
  }
  description = "The tags for the elastic ip"
}