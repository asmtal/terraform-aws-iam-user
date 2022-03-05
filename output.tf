output "name" {
  value       = aws_iam_user.this.name
  description = "Name of the created user"
}
output "arn" {
  value       = aws_iam_user.this.arn
  description = "ARN of the created user"
}
output "access_key" {
  value       = var.create_access_key == true ? aws_iam_access_key.this[0].id : null
  description = "Access key of the created user if var.create_access_key is set to true, else null "
}
output "secret" {
  value       = var.create_access_key == true ? aws_iam_access_key.this[0].secret : null
  description = "Secret of the created user if var.create_access_key is set to true, else null "

}
output "login" {
  value       = var.create_login_profile == true ? aws_iam_user_login_profile.this[0].password_reset_required : null
  description = "Specifies if a password reset is necessary on next login  if var.create_login_profile == true  is set to true, else null "
}
output "console_password" {
  value       = var.create_login_profile == true ? aws_iam_user_login_profile.this[0].encrypted_password : null
  description = "Encrypted login password if var.create_login_profile == true  is set to true, else null "

}
output "smtp_username" {
  value       = var.create_access_key == true && var.create_ses_access ? aws_iam_access_key.this[0].id : null
  description = "SMTP username  if var.create_access_key and var.create_ses_access are both set to true, else null "

}
output "smtp_password" {
  value       = var.create_access_key == true && var.create_ses_access ? aws_iam_access_key.this[0].ses_smtp_password_v4 : null
  description = "SMTP password  if var.create_access_key and var.create_ses_access are both set to true, else null "
}
