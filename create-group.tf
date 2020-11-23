resource "aws_iam_group" "info_group" {
  name = "Infosec"
  path = "/users/"
}

resource "aws_iam_group_membership" "infosec_team" {
  name = "info-group-membership"

  users = [
    "${aws_iam_user.ron.name}",
    "${aws_iam_user.billy.name}",
    "${aws_iam_user.sam.name}",
  ]

  group = "${aws_iam_group.info_group.name}"
}
