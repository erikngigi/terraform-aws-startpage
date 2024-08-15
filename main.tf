module "storage" {
  source          = "./modules/storage"
  bucket_name     = var.bucket_name
  file_mime_types = var.file_mime_types
  cloudfront_arn  = module.network.cloudfront_arn
}

module "network" {
  source                      = "./modules/network"
  bucket_regional_domain_name = module.storage.bucket_regional_domain_name
}
