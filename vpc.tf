module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = var.VPC_NAME
  cidr            = var.VPC-CIDR
  azs             = [var.ZONE1, var.ZONE2, var.ZONE3]
  private_subnets = [var.priv-sub-1, var.priv-sub-2, var.priv-sub-3]
  public_subnets  = [var.pub-sub-1, var.pub-sub-2, var.pub-sub-3]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
}