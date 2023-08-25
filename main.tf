module "vpc" {
  source = "git::https://github.com/sriram-git-6/vpc-module.git"

  for_each   = var.vpc
  cidr_block = each.value["cidr_block"]
}