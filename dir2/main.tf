/*
terraform {
  backend "local" {
    path = "../terraform.tfstate"
  }
}*/
provider "aws" {
  region = "ap-northeast-2"
}