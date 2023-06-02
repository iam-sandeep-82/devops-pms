#!/bin/bash

args=("$@")
docker run -w /app -v $PWD/patient_app/:/app/ -v $PWD/maven-data/:/root/.m2/ maven:3.9-eclipse-temurin-17-alpine "$@"
