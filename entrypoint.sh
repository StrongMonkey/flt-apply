#!/bin/sh

mkdir -p ${HOME}/.kube
echo ${KUBECONFIG_SECRET} | base64 -d > ${HOME}/.kube/config
flt apply $1