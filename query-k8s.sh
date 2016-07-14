#!/bin/bash

for (( i=1; i<=30; i++))
do
  curl -v --cacert /var/run/secrets/kubernetes.io/serviceaccount/ca.crt -H "Authorization: Bearer $(cat /var/run/secrets/kubernetes.io/serviceaccount/token)" https://kubernetes/
  sleep 5
done
