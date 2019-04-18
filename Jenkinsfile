pipeline{
    agent none
    environment{
        CI = true
    }
    stages{        
        stage('Images Selenium and Ruby') {
            parallel {
                stage('Selenium'){            
                    agent { 
                        docker {
                            image 'selenium/standalone-chrome-debug'
                        } 
                    } 
                    steps {
                        echo 'Run Selenium'
                    }
                }
                stage('Ruby'){            
                    agent { 
                        docker {
                            image 'ruby'
                            args '--link selenium'
                        }
                    } 
                    steps {
                        echo 'Run Selenium'
                    }
                }
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
