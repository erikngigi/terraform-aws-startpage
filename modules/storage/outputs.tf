output "bucket_regional_domain_name" {
  description = "Returns the regional domain name of the specified S3 bucket"
  value       = aws_s3_bucket.startpage.bucket_regional_domain_name
}
