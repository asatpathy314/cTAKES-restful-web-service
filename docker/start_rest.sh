#!/bin/bash

## Make sure there is an environment variable for the umls passkey
if [ -z $ctakes_umls_apikey ] ; then
    echo "Environment variable ctakes_umls_apikey must be defined"
    exit 1
fi

## Pass in environment variables
docker run -p 8080:8080 -e ctakes_umls_apikey -d sha256:8a01b78832da170f3da68d7b73206bef2aa8293e7ca8d96b7cb92f83af0fd1c4

