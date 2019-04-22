pipeline {
    agent none
    stages {
        stage('Selenium') {
            agent {
                docker { 
                    image 'selenium/standalone-chrome-debug' 
                    args '-d -p 4444:4444 -p 59000:59000 --name selenium'
                }
            }
            steps {
                sh 'echo success'
            }
        }
        stage('Ruby') {
            agent {
                docker {
                    image 'ruby'
                    args '--link selenium'
                }
            }
            steps {
                sh 'bundle install'
                sh 'bundle exec cucumber -p ci'
            }
        }
    }
}