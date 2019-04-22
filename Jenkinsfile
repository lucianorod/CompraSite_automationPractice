pipeline{
    agent{
        docker{ image 'ruby' } 
    }
    environment{
        CI = true
    }
    stages{
        stage('Selenium'){
            agent {
                docker { image 'selenium/standalone-chrome-debug' }
            }
            steps{
                sh "docker run -d -p 4444:4444 -p 59000:59000 --name selenium selenium/standalone-chrome-debug"
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
