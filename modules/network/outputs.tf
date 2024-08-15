output "cloudfront_arn" {
  description = "ARN value of the cloudfront distribution"
  value       = aws_cloudfront_distribution.cdn_static_site.arn
}

output "cloudfront_url" {
  description = "URL value of the cloudfront distribution"
  value       = aws_cloudfront_distribution.cdn_static_site.domain_name
}
