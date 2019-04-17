pipeline{
    agent{        
        docker{
            image 'ruby'
            args '--link selenium'
        }
    }
    environment{
        CI = true
    }
    stages{
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
