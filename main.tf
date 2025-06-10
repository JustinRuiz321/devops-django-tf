provider "aws" {
  region = var.region
}

module "vpc" {
  source     = "./modules/vpc"
  name_prefix = "my-eks"
  vpc_cidr    = "10.0.0.0/16"

  tags = {
    Project     = "my-eks-project"
    Environment = "dev"
  }
}

module "eks_cluster" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  subnet_ids   = var.private_subnet_ids
  tags         = var.tags
}

module "rds" {
  source = "./modules/rds"

  db_username        = "jruiz"
  db_password        = "password123"  
  db_allocated_storage = 20
  db_instance_class  = "db.t3.micro"

  subnet_ids = module.vpc.public_subnet_ids
  vpc_id     = module.vpc.vpc_id

  tags = {
    Project     = "my-eks-project"
    Environment = "dev"
  }
}