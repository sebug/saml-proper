# SAML Proper
In order to better understand WebLogic's handling of federated identity,
I decide to follow the tutorial here: https://blogs.oracle.com/blogbypuneeth/steps-to-configure-saml-sso-with-azure-as-idp-and-weblogic-server-as-sp

Since I'm fully Azure may as well try out Bicep - https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/bicep-tutorial-create-first-bicep?tabs=azure-powershell 

I'll install bicep directly with the latest version of az that I built myself (because I don't like homebrew):

	az bicep install

I also added the VS Code extension.

You can list regions available as follows:

	az account list-locations

We'll put the resources in a resource group:

	az group create --name samlProperResourceGroup --location switzerlandnorth

Now we can create a deployment group

	bicepFile=main.bicep
	az deployment group create --name spbicep --resource-group samlProperResourceGroup --template-file $bicepFile

