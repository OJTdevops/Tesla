#
# Variables Configuration
#

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
variable "key_pair_name" {
  default = "ekskey"
}
variable "eks_node_instance_type" {
  default = "t2.medium"
}

resource "aws_vpc" "maine" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "main_VPC"
  }
} 

