pipeline{
    agent{        
        docker{
            image 'ruby'
        }
    }
    environment{
        CI = true
    }
    stages{
        stage('Selenium') {
            agent { docker 'selenium/standalone-chrome-debug' } 
            steps {
                sh '--link ruby'
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
    }
}
