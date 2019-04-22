pipeline{
    agent any
    environment{
        CI = true
    }
    stages{
        stage('Ruby and Selenium'){
            steps{
                sh "docker-compose -f docker-compose.yml up"
            }
        }
    }
}
