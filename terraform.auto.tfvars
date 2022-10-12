state_stage = "dir3"
region = "ap-southeast-2"

resource_prefix = "JS-3-tier-Demo"

vpc_cidr    = "10.240.0.0/16"
subnet_cidr = "10.240.0.0/20"

bastion_instance_type = "t2.micro"
bastion_key_pair_name = "devos-demo-sydney-instance-key"

web_instance_type      = "t2.micro"
was_instance_type      = "t2.micro"
instance_key_pair_name = "devos-demo-sydney-target-instance-key"

bucket_name        = "devos-demo-tier-bucket-2"
bucket_versioning  = true
bucket_private_acl = true

create_db                = false
db_name                  = "demodb"
db_username              = "demouser"
db_password              = "demopass"
db_engine                = "mysql"
db_engine_version        = "5.7"
db_instance_class        = "db.t2.micro"

use_web_db = false
