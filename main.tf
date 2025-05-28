# ===========================
# main.tf
# ===========================

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                 = var.azs
}

module "alb" {
  source = "./modules/alb"

  vpc_id             = module.vpc.vpc_id
  public_subnet_ids  = module.vpc.public_subnet_ids
  target_subnet_ids  = module.vpc.private_subnet_ids
  ec2_instance_ids   = module.ec2.instance_ids
}

module "ec2" {
  source = "./modules/ec2"

  subnet_ids = module.vpc.private_subnet_ids
  vpc_id     = module.vpc.vpc_id
}
