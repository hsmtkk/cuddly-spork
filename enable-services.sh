#!/bin/sh
for s in apigateway.googleapis.com appengine.googleapis.com artifactregistry.googleapis.com cloudbuild.googleapis.com cloudfunctions.googleapis.com eventarc.googleapis.com iam.googleapis.com run.googleapis.com servicecontrol.googleapis.com
do
    gcloud services enable $s
done
