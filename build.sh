#!/usr/bin/env bash
set -x

build_jmeter_operator_docker_image() {
  registry="us.gcr.io/cloud-load-test"
  docker build --tag="$registry/jmeter-operator:latest" -f build/Dockerfile .
  docker push "$registry/jmeter-operator:latest"
}

build_jmeter_operator_docker_image

