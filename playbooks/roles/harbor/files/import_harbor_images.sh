#!/bin/sh
#
#Info
#########################
#	file: import_harbor_images.sh
# 	name: Import Harbor Images
#
#
# Description
######################### 
# Imports any Docker images that are not already in the Harbor repo into the repo.
#
#
# Notes
########################
#
# TODO: Right now Harbor uses the /data directory to store everything. It really should be the $INSTALL_DIR/var folder or
# something. There are already some people asking about it: https://github.com/vmware/harbor/issues/2023, but currently
# there doesn't seem to be a public solution.
#
# Functions
#########################
# Main function to import the images

main() {
# Check to see if any images have not been installed into Harbor
if [ "$(docker images | grep -v ${HOSTNAME} 2> /dev/null)" ]; then 
  x=1
  HOSTNAME="$(hostname)"

  # TOTHIS DOESN"T LOOK IMPORTANT. DELETE
########################
main


