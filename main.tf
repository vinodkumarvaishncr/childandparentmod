
module "resource" {
  source      = "./module/resource"
  resource_rg = var.resource_rg
}

module "storage" {
  source              = "./module/storage"
  storageAccount_infa = var.storageAccount_infa

  depends_on = [module.resource] # Ensures RGs are created first
}