# ===========================
# modules/ec2/variables.tf
# ===========================

variable "subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}
