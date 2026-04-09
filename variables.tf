variable "project" {
  type        = string
  description = "Project name"
}

variable "environment" {
  type        = string
  description = "Environment name"
}

variable "name" {
  type        = string
  description = "Bucket name as suffix project and environment"
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
  default     = {}
}

variable "enable_versioning" {
  type    = bool
  default = true
}

variable "bucket_policy" {
  type    = string
  default = null
}

variable "block_public_acls" {
  type    = bool
  default = true
}

variable "block_public_policy" {
  type    = bool
  default = true
}

variable "ignore_public_acls" {
  type    = bool
  default = true
}

variable "restrict_public_buckets" {
  type    = bool
  default = true
}

variable "bucket_namespace" {
  type        = string
  description = "Bucket namespace mode. Valid values are account-regional or global."
  default     = "global"

  validation {
    condition     = contains(["global", "account-regional"], var.bucket_namespace)
    error_message = "bucket_namespace must be either \"global\" or \"account-regional\"."
  }
}
