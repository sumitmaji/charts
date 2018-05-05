#!/bin/bash

release=$1
pod=$(kubectl get po -l app=$release 2>/dev/null | awk  "/${release}/" | awk '{print $1}' | head -n 1)

echo "Viewing logs of pod $pod"
kubectl logs $pod
