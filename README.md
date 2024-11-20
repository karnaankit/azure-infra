# Project Setup

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed
- An Azure subscription

## Setup Instructions

### 1. Clone the Repository

```sh
git clone <repository-url>
cd <repository-directory>
```

### 2. Create a Service Principal with Owner Rights

```sh
az ad sp create-for-rbac --name "<service-principal-name>" --role Owner --scopes /subscriptions/<subscription-id>
```
This command will output a JSON object with the following properties:
- appID: The service principal's client ID
- displayName: The service principal's display name
- clientSecret: A password that the service principal uses
- tenant: The service principal's tenant ID

### 3. Export the Service Principal Credentials to Environment Variables

Export the following to environment:

```sh
export ARM_CLIENT_ID=<appId>
export ARM_CLIENT_SECRET=<password>
export ARM_SUBSCRIPTION_ID=<subscription-id>
export ARM_TENANT_ID=<tenant>
export TF_VAR_subscription_id=<subscription-id>
```
Subscription ID can be found in Azure console.

### 4. Comment Out the Backend Configuration

Comment out the backend configuration in `main.tf`:

### 5. Initialize Terraform

```sh
terraform init
```

### 6. Create the required resources for backend

```sh
tf apply -target=azurerm_resource_group.tfstate
tf apply -target=azurerm_storage_account.tfstate
tf apply -target=azurerm_storage_container.tfstate
```

### 7. Uncomment the Backend Configuration

### 8. Plan and apply the Terraform configuration

```sh
terraform plan
terraform apply
```

### Additional Information

- Ensure that your Azure CLI is logged in with the correct subscription.
- Replace the values in `main.tf` with your own values.
- If you encounter any issues, refer to the Terraform Azure Provider documentation for more details