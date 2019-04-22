pipeline{
    agent none
    stages{
        stage('selenium') {
            agent {
                docker { 
                    image 'selenium/standalone-chrome-debug'
                    args '-d -p 4444:4444 -p 59000:59000 --name selenium'
                }
            }
        }
    }
}
