<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.4.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this_user_label"></a> [this\_user\_label](#module\_this\_user\_label) | r0ck40k/label/generic | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_policy.this_ses](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_iam_user_login_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_login_profile) | resource |
| [aws_iam_user_policy_attachment.this_ses](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_policy_document.this_ses](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_context"></a> [context](#input\_context) | Default environmental context | <pre>object({<br>    organization = string<br>    environment  = string<br>    account      = string<br>    product      = string<br>    tags         = map(string)<br>  })</pre> | n/a | yes |
| <a name="input_create_access_key"></a> [create\_access\_key](#input\_create\_access\_key) | Creates an accesskey and esecret for the user | `bool` | `true` | no |
| <a name="input_create_login_profile"></a> [create\_login\_profile](#input\_create\_login\_profile) | Creates a login for the AWS console | `bool` | `false` | no |
| <a name="input_create_ses_access"></a> [create\_ses\_access](#input\_create\_ses\_access) | Creates a login for the ses | `bool` | `false` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | Groups the user should be attached to | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the user to create | `string` | n/a | yes |
| <a name="input_public_key_for_password"></a> [public\_key\_for\_password](#input\_public\_key\_for\_password) | Public key for the encrypted console access | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | Access key of the created user if var.create\_access\_key is set to true, else null |
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the created user |
| <a name="output_console_password"></a> [console\_password](#output\_console\_password) | Encrypted login password if var.create\_login\_profile == true  is set to true, else null |
| <a name="output_login"></a> [login](#output\_login) | Specifies if a password reset is necessary on next login  if var.create\_login\_profile == true  is set to true, else null |
| <a name="output_name"></a> [name](#output\_name) | Name of the created user |
| <a name="output_secret"></a> [secret](#output\_secret) | Secret of the created user if var.create\_access\_key is set to true, else null |
| <a name="output_smtp_password"></a> [smtp\_password](#output\_smtp\_password) | SMTP password  if var.create\_access\_key and var.create\_ses\_access are both set to true, else null |
| <a name="output_smtp_username"></a> [smtp\_username](#output\_smtp\_username) | SMTP username  if var.create\_access\_key and var.create\_ses\_access are both set to true, else null |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
