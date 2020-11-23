resource "aws_iam_policy" "terraform-policy" {
  name        = "poweruser_policy"
  description = "terraform policy"

  policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
{
"Effect": "Allow",
"NotAction": [
"iam:*",
"organizations:*",
"account:*"
],
"Resource": "*"
},
{
"Effect": "Allow",
"Action": [
"iam:CreateServiceLinkedRole",
"iam:DeleteServiceLinkedRole",
"iam:ListRoles",
"organizations:DescribeOrganization",
"account:ListRegions"
],
"Resource": "*"
}
]
}
EOF
}
