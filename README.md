[![Build Status](https://travis-ci.org/palerique/multi-docker-k8s.svg?branch=master)](https://travis-ci.org/palerique/multi-docker-k8s)

# multi-docker-k8s

commands executed on GCP console:
```
    1  gcloud config set compute/zone southamerica-east1-a
    2  gcloud container cluster get-credentials multi-docker-cluster
    3  gcloud container clusters get-credentials multi-docker-cluster
    4  kubectl create secret generic pgpassword --from-literal PGPASSWORD=postgrespassword
    5  kubectl get namespaces
    6  kubectl create serviceaccount --namespace kube-system tiller
    7  kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller
    8  history
    9  helm init
   10  curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > get_helm.sh
   11  chmod 700 get_helm.sh
   12  ./get_helm.sh
   13  helm init
   14  helm init --service-account tiller --upgrade
   15  history
   16  helm install stable/nginx-ingress --name my-nginx --set rbac.create=true
   17  history
```