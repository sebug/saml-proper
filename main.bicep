resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: 'sebugamlproper'
  location: 'switzerlandnorth'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}