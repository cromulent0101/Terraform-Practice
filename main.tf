terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "mycoolinstance" {
    ami         = "ami-0261755bbcb8c4a84" # Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
    instance_type = "t2.micro" # free tier eligible
}