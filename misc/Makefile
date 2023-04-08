TERRAFORM_VERSION ?= 1.1.9
PACKER_VERSION ?= 1.8.0
COMPOSE_VERSION ?= 1.25.4

# Operating system: darwin, freebsd, linux, openbsd, solaris, windows
OS = darwin

# Architecture: 386, amd64, arm
ARCH = amd64

RELEASES_URL = https://releases.hashicorp.com
TERRAFORM_FILENAME = terraform_${TERRAFORM_VERSION}_${OS}_${ARCH}.zip
PACKER_FILENAME = packer_${PACKER_VERSION}_${OS}_${ARCH}.zip

.PHONY: terraform packer terraform-download packer-download all clean docker-compose

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

# Completion:
# sudo curl -L https://raw.githubusercontent.com/docker/compose/${COMPOSE_VERSION}/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
docker-compose:
	rm -f ~/local/bin/docker-compose
	curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-Linux-x86_64 -o ~/local/bin/docker-compose
	chmod +x ~/local/bin/docker-compose
	~/local/bin/docker-compose --version

packer-clean:
	rm ${PACKER_FILENAME}

all: terraform packer clean

clean: terraform-clean packer-clean

