# ===========================
# modules/alb/variables.tf
# ===========================

variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "target_subnet_ids" {
  type = list(string)
}

variable "ec2_instance_ids" {
  type = list(string)
}
