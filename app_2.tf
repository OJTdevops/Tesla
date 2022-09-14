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

resource "aws_vpc" "maine" {
   cidr_block = "10.0.0.0/16"
   tags = {
    "Name" = "main_VPC"
   }
}

resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.maine.id}"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone = "us-east-1a"
  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "main1" {
  vpc_id     = "${aws_vpc.maine.id}"
  cidr_block = "10.0.0.0/25"
  map_public_ip_on_launch = "false"
  availability_zone = "us-east-1b"
  tags = {
    Name = "private_subnet"
  }
}
