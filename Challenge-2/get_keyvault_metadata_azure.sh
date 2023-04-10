#!/bin/bash
subscriptionId='put your Azure subscription ID here'
resourceGroupName= 'myrg'
vaultName= 'mykeyvault'
apiversion='2022-07-01'
Host="management.azure.com"
authtoken=access_token=$(curl -s "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2021-06-01&resource=https%3A%2F%2Fvault.azure.net" -H "Metadata:true" | jq -r '.access_token')

curl -s \
	--header "Authorization: Bearer $authtoken" \
	--header "Content-Type: application/json"
	--request GET \
	  https://$Host/subscriptions/$subscriptionId/resourceGroups/$resourceGroupName/providers/Microsoft.KeyVault/vaults/$vaultName?api-version=$apiversion \
	| jq .))