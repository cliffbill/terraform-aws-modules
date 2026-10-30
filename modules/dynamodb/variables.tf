variable "table_name" {
  description = "Name of the DynamoDB table."
  type        = string
  nullable    = false
}

variable "billing_mode" {
  description = "Billing mode for the table (PROVISIONED or PAY_PER_REQUEST)."
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "Attribute name to use as the hash (partition) key."
  type        = string
  nullable    = false
}

variable "hash_key_type" {
  description = "Data type of the hash key (S, N, or B)."
  type        = string
  default     = "S"
}

variable "range_key" {
  description = "Attribute name to use as the range (sort) key."
  type        = string
  default     = null
}

variable "range_key_type" {
  description = "Data type of the range key (S, N, or B)."
  type        = string
  default     = null
}

variable "point_in_time_recovery_enabled" {
  description = "Whether to enable point-in-time recovery."
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags applied to the DynamoDB table."
  type        = map(string)
  default     = {}
}
