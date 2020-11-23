
resource "aws_iam_group_policy_attachment" "test-attach" {
  group      = "${aws_iam_group.info_group.name}"
  policy_arn = "${aws_iam_policy.terraform-policy.arn}"
}
