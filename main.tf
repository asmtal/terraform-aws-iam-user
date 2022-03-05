module "this_user_label" {
  source     = "r0ck40k/label/generic"
  version    = "0.1.0"
  context    = var.context
  attributes = ["iam", "user", var.name]
}
resource "aws_iam_user" "this" {
  name = module.this_user_label.id
}
resource "aws_iam_access_key" "this" {
  count = var.create_access_key == true ? 1 : 0
  user  = aws_iam_user.this.name
}
resource "aws_iam_user_login_profile" "this" {
  count   = var.create_login_profile == true ? 1 : 0
  pgp_key = var.public_key_for_password
  user    = aws_iam_user.this.name
}
resource "aws_iam_user_group_membership" "this" {
  groups = var.groups
  user   = aws_iam_user.this.name
}

data "aws_iam_policy_document" "this_ses" {
  statement {
    actions   = ["ses:SendRawEmail"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "this_ses" {
  count = var.create_ses_access == true ? 1 : 0

  name        = "pol_ses_${aws_iam_user.this.name}"
  description = "Allows sending of e-mails via Simple Email Service"
  policy      = data.aws_iam_policy_document.this_ses.json
}

resource "aws_iam_user_policy_attachment" "this_ses" {
  count      = var.create_ses_access == true ? 1 : 0
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.this_ses[0].arn
}
