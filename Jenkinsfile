pipeline{
    agent { dockerfile true }
    environment{
        CI = true
    }
    stages{
        stage('Ruby'){
            agent {
                docker { 
                    image 'ruby'
                }
            }
            steps{
                sh "ruby -v"
            }
        }
        stage('Bundle'){
            steps{
                sh "bundle install"
            }
        }
        stage('Run Features'){
            steps{
                script{
                    try{
                        sh "bundle exec cucumber -p ci"
                    } finally {
                        cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'reports', sortingMethod: 'ALPHABETICAL'
                    }
                }                
            }
        }
        stage('Down Selenium'){
            steps{
                sh "docker stop selenium"
                sh "docker rm selenium"
            }
        }
    }
}
