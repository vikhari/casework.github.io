#!/usr/bin/make -f

# This software was developed at the National Institute of Standards
# and Technology by employees of the Federal Government in the course
# of their official duties. Pursuant to title 17 Section 105 of the
# United States Code this software is not subject to copyright
# protection and is in the public domain. NIST assumes no
# responsibility whatsoever for its use by other parties, and makes
# no guarantees, expressed or implied, about its quality,
# reliability, or any other characteristic.
#
# We would appreciate acknowledgement if the software is used.

SHELL := /bin/bash

all: \
  all-examples \
  all-releases

all-examples:
	$(MAKE) \
	  --directory examples

all-releases:
	$(MAKE) \
	  --directory releases/0.2.0/migration

.PHONY: \
  all-examples \
  all-releases \
  check-examples \
  check-releases

check: \
  check-examples \
  check-releases

check-examples:
	$(MAKE) \
	  --directory examples \
	  check

check-releases:
	$(MAKE) \
	  --directory releases/0.2.0/migration \
	  check

clean:
	@$(MAKE) \
	  --directory releases/0.2.0/migration \
	  clean
	@$(MAKE) \
	  --directory examples \
	  clean
