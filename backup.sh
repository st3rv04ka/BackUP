#!/bin/bash

TIME=$(date +"d%d-m%m-y%y-h%H-m%M")

# day month year hours minutes

DIR="./backup"

# Directory for backups

if ! [ -d $DIR ]; then
mkdir $DIR
fi

cd $DIR

# Create a directory if it does not exist

TMP_DIR=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13 ; echo '')

# Creating a random name for a temporary folder

mkdir /tmp/$TMP_DIR

# Creating a temporary folder

# ... Just move the necessary files to a temporary folder ...



# ... END ...

cd /tmp/$TMP_DIR && tar czf --absolute-names /$DIR/$TIME.tar.gz . && cd -

# Ceating a backup!

rm -rf /tmp/$TMP_DIR/

# We need to clean up our mess

echo 'Done!'