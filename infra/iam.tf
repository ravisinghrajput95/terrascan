resource "aws_iam_policy" "iam_policy" {
  name = "test_policy"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : "*",
        "Effect" : "Allow",
        "Resource" : "*"
      }
    ]
  })
}