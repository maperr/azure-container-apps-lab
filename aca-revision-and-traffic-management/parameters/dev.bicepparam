using '../main.bicep'

param acaResourceGroupName = 'rg-aca-helloworld-neu-${environment}'
param environment = 'dev'
param location = 'northeurope'

param tags = {
  application: 'aca-revision-traffic-mgmt'
  environment: environment
}
param trafficDistribution = [
  {
    latestRevision: true
    weight: 50
  }
  {
    revisionName: 'aca-hello-world--tvi6we5'
    weight: 50
  }
]
