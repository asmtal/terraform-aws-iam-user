variable "name" {
  type        = string
  description = "Name of the user to create"
}
variable "groups" {
  type        = list(string)
  description = "Groups the user should be attached to"
}
variable "create_access_key" {
  type        = bool
  default     = true
  description = "Creates an accesskey and esecret for the user"
}
variable "create_login_profile" {
  type        = bool
  default     = false
  description = "Creates a login for the AWS console"
}
variable "create_ses_access" {
  type        = bool
  default     = false
  description = "Creates a login for the ses"
}

#tfsec:ignore:GEN001
variable "public_key_for_password" {
  type        = string
  default     = ""
  description = "Public key for the encrypted console access"
  sensitive   = true
}
variable "context" {
  type = object({
    organization = string
    environment  = string
    account      = string
    product      = string
    tags         = map(string)
  })
  description = "Default environmental context"
}
