region           = "us-east-1"
cluster_name     = "my-eks-cluster"
vpc_id           = "vpc-0de67001927564ed1"
private_subnet_ids = ["subnet-06df5e359c5663f47", "subnet-023043b057742211b"]
eks_role_name    = "eks-cluster-role"
tags = {
  Environment = "dev"
  Project     = "my-eks-project"
}
db_name = "test"