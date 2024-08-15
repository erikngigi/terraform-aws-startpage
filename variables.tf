# storage module variables
variable "bucket_name" {
  description = "generic name for the s3 bucket"
  type        = string
}

variable "file_mime_types" {
  description = "maps file extensions of upload files to various MIME types"
  type        = map(string)
}
