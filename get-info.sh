#!/bin/sh

while true; do

KUBE_TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
INFO=$(curl -sSk -H "Authorization: Bearer $KUBE_TOKEN" https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_PORT_443_TCP_PORT/api/v1/namespaces/default/pods/$HOSTNAME)

echo "----------------"
env
echo "++++++"

echo $INFO 
echo "++++++"

echo API url       = https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_PORT_443_TCP_PORT
echo HostName      = $HOSTNAME
echo Pod name      = $(echo ${INFO} | jq '.metadata.name')
echo Pod namespace = $(echo ${INFO} | jq '.metadata.namespace')
echo Pod labels    = $(echo ${INFO} | jq '.metadata.labels')

echo "----------------"

sleep 5
done;