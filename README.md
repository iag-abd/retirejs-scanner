# retirejs-docker
## Introduction

[RetireJS](https://github.com/RetireJS/retire.js) is a tool to help detect the use of Javascript library versions with known vulnerabilities.

This container exposes the [command line scanner](https://github.com/RetireJS/retire.js/tree/master/node) version of RetireJS.


## Installation
### Build Local Image

````bash
# Build manually
$ cd retirejs
$ docker build . -t localhost/retirejs:latest
````


## Usage

The retirejs-docker container will scan the container ````/app ```` and write out
it's report in JSON format to the ````/retirejs/output/retirejs.out```` file.

Utilise Docker Volume mapping in order to configure retirejs-docker to scan your application.

````bash
# Display retire.js help
$ docker run --rm localhost/retirejs:latest --help

# Scan an application located in /apptoscan on the host
# and write report out to the /reports directory
$ docker run --rm \
    -v /apptoscan:/app
    -v /reports:/retirejs/output \
    localhost/retirejs:latest
````
