SHELL   := bash
.SHELLFLAGS := -eu -o pipefail -c  
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

start:
	podman-compose -f podman-compose.yml up --pull --detach

stop:
	podman-compose -f podman-compose.yml down --remove-orphans -t 100

