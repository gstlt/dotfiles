#Hashicorp: update Terraform and/or Packer

This makefile will make it a bit easier to download and update versions of Terraform and Packer.

I've decided not to guess the latest versions as it might be required to use specific version and not update automatically to latest one. But it may be added in a future.

# Usage

Download Packer and put binary inside `bin/`:

`make packer`

Download Terraform and put binary inside `bin/`:

`make terraform`

Download both Terraform and Packer:

`make all`

Cleanup:

`make terraform-clean`

or

`make packer-clean`

or

`make clean`
