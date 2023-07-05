# templatefile Function Example

This is a simple example of using the [templatefile](https://www.terraform.io/docs/configuration/functions/templatefile.html) function in Terraform with the specific purpose if dynamically including a section of content based on a variable. The variable to control the dynamic content is `is_k8s`. The variable is a list, and if it has an entry, then the dynamic content is included. If the variable is empty, then the dynamic content is not included.

## How to run the example

Because this example is so simple, there is no need to initialize the Terraform providers (there aren't any defined). Just clone the repo, change to this directory, and then run:

```bash
terraform apply -auto-approve
```

The output should look something like this:

```bash
$ terraform apply -auto-approve

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

k8s_userdata = <<EOT
# common to all instance roles
# this is only for k8s

EOT
non_k8s_userdata = <<EOT
# common to all instance roles

EOT
```
