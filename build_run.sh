#!/bin/bash

./build.sh mvn clean package -D skipTests #first execute the build file involve the steps for building the jar file
sleep 5
./run.sh patient_app-0.0.1-SNAPSHOT.jar  #run the latest jar file passing arguments as jar file
