#!/bin/sh
gcloud functions deploy person-function --allow-unauthenticated --entry-point=EntryPoint --gen2 --region=us-central1 --runtime=go120 --trigger-http
