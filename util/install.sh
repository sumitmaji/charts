#!/bin/bash

release=$1

helm install /export/helm-charts/incubator/$release --name $release 
