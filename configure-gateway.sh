#!/bin/sh
gcloud api-gateway api-configs create person-config --api=person --openapi-spec=api-spec.yaml \
 && gcloud api-gateway gateways create person-gateway --api=person --api-config=person-config --location=us-central1
