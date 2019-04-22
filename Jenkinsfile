pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { image 'selenium/standalone-chrome-debug' }
            }
            steps {
                
            }
        }
        stage('Front-end') {
            agent {
                docker { image 'node:7-alpine' }
            }
            steps {
                sh 'node --version'
            }
        }
    }
}