# Create resource group 
az group create `
--location eastasia `
--name githubaction

# Create storage account 
az storage account create `
--name storageaccount12111122 `
--resource-group githubaction `
--location eastasia `
--sku Standard_LRS


# Enable blob storage to store static website
az storage blob service-properties update `
--account-name storageaccount12111122 `
--static-website `
--404-document error.html `
--index-document index.html