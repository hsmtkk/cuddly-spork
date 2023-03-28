#!/bin/sh
gcloud builds submit \
 && gcloud run deploy person --allow-unauthenticated --execution-environment=gen2 --image=us-central1-docker.pkg.dev/cuddly-spork/repository/app:latest --region=us-central1
