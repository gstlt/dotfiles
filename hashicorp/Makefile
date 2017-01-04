TERRAFORM_VERSION = 0.8.2
PACKER_VERSION = 0.12.1

# Operating system: darwin, freebsd, linux, openbsd, solaris, windows
OS = darwin

# Architecture: 386, amd64, arm
ARCH = amd64

RELEASES_URL = https://releases.hashicorp.com
TERRAFORM_FILENAME = terraform_${TERRAFORM_VERSION}_${OS}_${ARCH}.zip
PACKER_FILENAME = packer_${PACKER_VERSION}_${OS}_${ARCH}.zip

.PHONY: terraform packer all clean

terraform:
	wget ${RELEASES_URL}/terraform/${TERRAFORM_VERSION}/${TERRAFORM_FILENAME}
	unzip ${TERRAFORM_FILENAME}
	mv ./terraform bin/

terraform-clean:
	rm ${TERRAFORM_FILENAME}

packer:
	wget ${RELEASES_URL}/packer/${PACKER_VERSION}/${PACKER_FILENAME}
	unzip ${PACKER_FILENAME}
	mv ./packer bin/

packer-clean:
	rm ${PACKER_FILENAME}

all: terraform packer clean

clean: terraform-clean packer-clean

