pipeline {
    agent any
    environment { 
        key = 'clasdsdsang'
    }
    stages {
        stage('Build') {
            steps {
                echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL} ${env.key}"
                sh './build.sh mvn clean package -D skipTests'
                sh 'ls -lh ./patient_app/target'
            }
        }
  
    }
}