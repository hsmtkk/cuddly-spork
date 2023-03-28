#!/bin/sh
gcloud api-gateway gateways delete person-gateway --location=us-central1
gcloud api-gateway api-configs delete person-config --api=person
