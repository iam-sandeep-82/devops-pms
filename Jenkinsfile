pipeline {
    agent any
    environment { 
        key = 'clasdsdsang'
    }
    stages {
        stage('Build JAR') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL} ${env.key}"
                sh './build.sh mvn clean package -D skipTests'
                sh 'ls -lh ./patient_app/target'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "docker build -t patient-application:beta -f Patient-App-Dockerfile ."
                sh 'docker images && docker images | grep -w patient-application'
                sh 'ls -lh ./patient_app/target'
            }
        }
        stage('Local Deploy Test') {
            steps {
                echo "PATIENT-APP-LOCAL-TEST RUNNING ON PORT 80"
                sh 'docker network create netx'
                sh 'docker run -d -p 80:8080 --network netx patient-application:beta'
            }
        }
  
    }
}