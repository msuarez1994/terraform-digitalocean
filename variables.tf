variable "do_token" {
    description = "Digital Ocean API token"
    type        = string
    sensitive   = true
}

variable "domain" {
    description = "Domain name"
    type        = string
    default     = "example.com"
}