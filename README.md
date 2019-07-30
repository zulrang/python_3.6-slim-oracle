python:3.6-slim-oracle
======================

Building
--------
1. Extract the [version 18.5 "basiclite" and "sdk" oracle instant client library](https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html) files into the current directory
2. Run `docker build -t python:3.6-slim-oracle .`

Theoretically, the Dockerfile should work with any Debian-based Linux base image.
