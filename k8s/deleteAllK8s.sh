#!/usr/bin/env bash

./geAllK8s.sh
kubectl delete "statefulsets,daemonsets,replicasets,services,deployments,pods,rc,persistentvolumeclaims,ingresses,secrets" --all
./geAllK8s.sh
