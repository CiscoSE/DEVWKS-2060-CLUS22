variable "student_email_domain" {
  description = "Email domain for student accounts"
  type        = string
  default     = "broadcaststorm.info"
}

variable "standalone_server_name" {
  description = "Target Name for the Standalone Server"
  type        = list(string)
  default     = ["C240-M4L-Lab"]
}

variable "intersight_domain_name" {
  description = "Target Name for the Intersight managed domain"
  type        = list(string)
  default     = ["DCPOD-HXAF-UCS"]
}
