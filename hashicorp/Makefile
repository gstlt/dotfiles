TERRAFORM_VERSION = 0.9.1
PACKER_VERSION = 0.12.3

# Operating system: darwin, freebsd, linux, openbsd, solaris, windows
OS = linux

# Architecture: 386, amd64, arm
ARCH = amd64

RELEASES_URL = https://releases.hashicorp.com
TERRAFORM_FILENAME = terraform_${TERRAFORM_VERSION}_${OS}_${ARCH}.zip
PACKER_FILENAME = packer_${PACKER_VERSION}_${OS}_${ARCH}.zip

.PHONY: terraform packer terraform-download packer-download all clean

terraform: terraform-download terraform-clean

terraform-download:
	wget ${RELEASES_URL}/terraform/${TERRAFORM_VERSION}/${TERRAFORM_FILENAME}
	unzip ${TERRAFORM_FILENAME}

terraform-clean:
	rm ${TERRAFORM_FILENAME}

packer: packer-download packer-clean

packer-download:
	wget ${RELEASES_URL}/packer/${PACKER_VERSION}/${PACKER_FILENAME}
	unzip ${PACKER_FILENAME}

packer-clean:
	rm ${PACKER_FILENAME}

all: terraform packer clean

clean: terraform-clean packer-clean

