pipeline {
    agent none
    stages {
        stage('Selenium') {
            agent {
                docker { image 'selenium/standalone-chrome-debug' }
            }
            steps {
                sh 'echo i'
            }
        }
    }
}