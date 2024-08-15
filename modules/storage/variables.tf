# storage module variables
variable "bucket_name" {
  description = "generic name for the s3 bucket imported from root"
  type        = string
}

variable "file_mime_types" {
  description = "maps file extensions of upload files to various MIME types"
  type        = map(string)
}

# storage module imported variables
variable "cloudfront_arn" {
  description = "ARN value of the cloudfront distribution from network module"
  type        = string
}
