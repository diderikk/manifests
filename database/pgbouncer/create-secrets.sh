#!/bin/sh
# https://github.com/edoburu/docker-pgbouncer/blob/master/examples/kubernetes/multiuser/create-secrets

KUBE_NAMESPACE="database"
DEPLOYMENT_NAME="pgbouncer"
APP_NAME="$DEPLOYMENT_NAME"
SECRET_NAME="$DEPLOYMENT_NAME-config"

cd `dirname $0`
kubectl create secret generic "$SECRET_NAME" --namespace="$KUBE_NAMESPACE" --from-file=pgbouncer.ini --from-file=userlist.txt -o yaml --dry-run=client | tee "secrets.yaml"