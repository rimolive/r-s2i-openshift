# Variables are documented in common/build.sh.
BASE_IMAGE_NAME=r
VERSIONS=3.4.3
OPENSHIFT_NAMESPACES=3.7

# HACK:  Ensure that 'git pull' for old clones doesn't cause confusion.
# New clones should use '--recursive'.
.PHONY: $(shell test -f common/common.mk || echo >&2 'Please do "git submodule update --init" first.')

include common/common.mk