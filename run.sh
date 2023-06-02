docker run -d -p 8080:8080 -w /app -v $PWD/patient_app/target/:/app/  maven:3.9-eclipse-temurin-17-alpine java -jar "$@"
