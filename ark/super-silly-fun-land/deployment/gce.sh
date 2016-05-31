#!/bin/bash

APP="ogs-servers-hurtworld-hurtcoast"
PROJECT="open-gaming"
ZONE="us-central1-a"
CLUSTER="us-central-cluster"

REPO="quay.io/jonathanporta"
IMAGE="ogs-servers-hurtworld-hurtcoast"

gcloud config set project $PROJECT
gcloud config set compute/zone $ZONE
gcloud config set container/cluster $CLUSTER
gcloud container clusters get-credentials $CLUSTER

gcloud config list

kubectl create -f ./service.yml

# kubectl run $APP --image=${REPO}/${IMAGE}/${APP} --port=8080

kubectl create -f ./rc.yml

gcloud compute firewall-rules create hurtworld-hurtcoast-host --allow=udp:12871
gcloud compute firewall-rules create hurtworld-hurtcoast-query --allow=udp:12881
