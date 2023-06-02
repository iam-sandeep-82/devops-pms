pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh './build.sh mvn clean package -D skipTests'
                sh 'ls -lh ./patient_app/target'
            }
        }
        stage('Test') {
            steps {
                //
            }
        }
        stage('Deploy') {
            steps {
                //
            }
        }
    }
}
