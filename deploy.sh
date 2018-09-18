#!/usr/bin/env bash

docker build -t palerique/multi-docker-client:latest -t palerique/multi-docker-client:$GIT_SHA ./client
docker build -t palerique/multi-docker-server:latest -t palerique/multi-docker-server:$GIT_SHA ./server
docker build -t palerique/multi-docker-worker:latest -t palerique/multi-docker-worker:$GIT_SHA ./worker

docker push palerique/multi-docker-client
docker push palerique/multi-docker-server
docker push palerique/multi-docker-worker

docker push palerique/multi-docker-client:$GIT_SHA
docker push palerique/multi-docker-server:$GIT_SHA
docker push palerique/multi-docker-worker:$GIT_SHA

kubectl apply -f k8s

kubectl set image deployment/client-deployment client=palerique/multi-docker-client:$GIT_SHA
kubectl set image deployment/server-deployment server=palerique/multi-docker-server:$GIT_SHA
kubectl set image deployment/worker-deployment worker=palerique/multi-docker-worker:$GIT_SHA
