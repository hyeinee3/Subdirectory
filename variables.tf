variable "state_stage" {
  default = "local"
  description = "Target tfState Location"
}
variable "region" {
  default = "ap-northeast-2"
  description = "Amazon Region"
}
variable "resource_prefix" {
  default = "DevOS-3-tier-Demo"
  description = "resource name prefix"
  type = string
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "vpc CIDR Range"
}

variable "subnet_cidr" {
  default = "10.0.1.0/20"
  description = "subnet CIDR Range"
}

variable "bastion_instance_type" {
  default = "t2.micro"
  description = "EC2 Bastion Instance Type"
}

variable "web_instance_type" {
  default = "t2.micro"
  description = "EC2 Web Server Instance Type"
}

variable "was_instance_type" {
  default = "t2.micro"
  description = "EC2 WAS Server Instance Type"
}

// Bastion
variable "bastion_ami" {
  description = "EC2 Bastion Instance Ami Id"
  type = string
  default = ""
}

variable "bastion_key_pair_name" {
  default = "devos-demo-seoul-bastion-key"
  description = "Bastion Instance Key Pair Name"
}

variable "instance_key_pair_name" {
  default = "devos-demo-seoul-instance-key"
  description = "Instance Key Pair Name"
}

variable "web_desired_capacity" {
  description = "WEB Auto Scaling Group Desired Capacity"
  default = 2
}

variable "web_min_size" {
  description = "WEB Auto Scaling Group Min Size"
  default = 2
}

variable "web_max_size" {
  description = "WEB Auto Scaling Group Max Size"
  default = 4
}

variable "was_desired_capacity" {
  description = "WAS Auto Scaling Group Desired Capacity"
  default = 2
}

variable "was_min_size" {
  description = "WAS Auto Scaling Group Min Size"
  default = 2
}

variable "was_max_size" {
  description = "WAS Auto Scaling Group Max Size"
  default = 4
}

variable "create_db" {
  default = true
  type = bool
  description = "RDS Generated or not"
}

variable "db_name" {
  default = "demodb"
  type = string
  description = "RDS Database Name"
}

variable "db_username" {
  default = "demouser"
  description = "RDS Access User Name"
}

variable "db_password" {
  default = "demopass"
  description = "RDS Access Password"
}

variable "db_engine" {
  description = "RDS DB Engine"
  default = "mysql"
}

variable "db_engine_version" {
  description = "RDS DB Engine Version"
  default = "5.7"
}

variable "db_instance_class" {
  description = "RDS DB Engine Instance Class"
  default = "db.t2.micro"
}


variable "bucket_name" {
  description = "S3 Bucket Name"
  type = string
  default = "catalog-s3-bucket"
}

variable "bucket_versioning" {
  description = "S3 Bucket Versioning"
  type        = bool
  default     = true
}

variable "bucket_private_acl" {
  description = "S3 Bucket Private ACL"
  type        = bool
  default     = true
}

variable "additional_tags" {
  default = {}
  description = "Additional Resource Tags"
  type = map(string)
}

variable "use_web_db" {
  default = false
  type = bool
  description = "Whether to Use RDS Web Client"
}