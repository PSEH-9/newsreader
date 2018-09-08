#!/bin/bash

#kill the previously running microservice if running
if [[ $(ps aux | grep "news-reader-0.0.1-SNAPSHOT.jar" | grep -v "grep" | awk '{print $2}' | wc -l) = 1 ]]; then
ps aux | grep "news-reader-0.0.1-SNAPSHOT.jar" | grep -v "grep" | awk '{print $2}' | xargs kill
fi

#deploy the microservice
java -jar news-reader-0.0.1-SNAPSHOT.jar
