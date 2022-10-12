terraform {
  backend "local" {
    path = "dir3/terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

