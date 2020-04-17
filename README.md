# Simple Example - Resource Import/Delete

This example imports a Kubernetes namespace that was created outside of Terraform.  You can define this resource in the [main.tf](https://github.com/TroyFluegge/ResourceImport/blob/master/main.tf) file if you plan to keep the resource and manage it with Terraform.  In some cases these may be default configurations as part of the cluster bootstraping processes.  Removing these default resources within Terraform might be required.

This is an example of removing a resource that wasn't created with Terraform.

Import the resource but set the config path to the *.tf file of resources you want to import

```terraform import -config=./import_resources kubernetes_namespace.local-create local-create```
 
 The you can run your `plan/apply` on the main config directory.  This will remove the resource you just imported since it's not defined in the main config directory.  **BE CAREFUL.  THIS WILL DELETE THE RESOURCE YOU PREVIOUSLY IMPORTED**