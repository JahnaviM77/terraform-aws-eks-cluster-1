# Variables Configuration

variable "cluster-name" {
  type        = string
  description = "The name of your EKS Cluster"
}

variable "aws-region" {
  type        = string
  description = "The AWS Region to deploy EKS"
}

variable "availability-zones" {
  type        = list
  description = "The AWS AZ to deploy EKS"
}

variable "k8s-version" {
  type        = string
  description = "Required K8s version"
}

variable "kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the node kubelet process"
}

variable "public-kublet-extra-args" {
  default     = ""
  type        = string
  description = "Additional arguments to supply to the public node kubelet process"

}

variable "vpc-subnet-cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "The VPC Subnet CIDR"
}

variable "private-subnet-cidr" {
  default     = ["10.0.0.0/19", "10.0.32.0/19", "10.0.64.0/19"]
  type        = list
  description = "Private Subnet CIDR"
}

variable "public-subnet-cidr" {
  default     = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]
  type        = list
  description = "Public Subnet CIDR"
}

variable "db-subnet-cidr" {
  default     = ["10.0.192.0/21", "10.0.200.0/21", "10.0.208.0/21"]
  type        = list
  description = "DB/Spare Subnet CIDR"
}

variable "eks-cw-logging" {
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  type        = list
  description = "Enable EKS CWL for EKS components"
}

variable "node-instance-type" {
  type        = string
  description = "Worker Node EC2 instance type"
}

variable "root-block-size" {
  type        = string
  description = "Size of the root EBS block device"

}

variable "desired-capacity" {
  type        = string
  description = "Autoscaling Desired node capacity"
}

variable "max-size" {
  type        = string
  description = "Autoscaling maximum node capacity"
}

variable "min-size" {
  type        = string
  description = "Autoscaling Minimum node capacity"
}

variable "ec2-key-public-key" {
  type        = string
  description = "AWS EC2 public key data"
}
