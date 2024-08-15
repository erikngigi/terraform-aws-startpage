resource "aws_s3_bucket" "startpage" {
  bucket        = var.bucket_name
  force_destroy = true
}

resource "aws_s3_account_public_access_block" "startpage" {
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_object" "startpage" {
  bucket       = aws_s3_bucket.startpage.id
  for_each     = fileset("${path.root}/files/startpage", "**/*.*")
  key          = each.value
  source       = "${path.root}/files/startpage/${each.value}"
  content_type = lookup(var.file_mime_types, regex("\\.[^.]+$", each.value), null)
}

resource "aws_s3_bucket_website_configuration" "startpage" {
  bucket = aws_s3_bucket.startpage.id

  index_document {
    suffix = "index.html"
  }
}

data "aws_iam_policy_document" "startpage" {
  statement {
    actions = [
      "s3:GetObjects",
      "s3:ListObjects"
    ]
    resources = ["${aws_s3_bucket.startpage.arn}/*"]
    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }
    condition {
      test     = "StringEquals"
      variable = "aws:SourceArn"
      values   = [var.cloudfront_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "startpage" {
  bucket = aws_s3_bucket.startpage.id
  policy = data.aws_iam_policy_document.startpage.json
}
