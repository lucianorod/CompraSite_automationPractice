node {
    checkout scm
    docker.image('selenium/standalone-chrome-debug').withRun('-d -p 4444:4444 -p 59000:59000 --name selenium') { s ->
        docker.image('ruby').inside('--link ${c.id}:selenium') {
            sh 'echo success'
        }
    }
}

// pipeline {
//     agent none
//     stages {
//         stage('Selenium') {
//             agent {
//                 docker { 
//                     image 'selenium/standalone-chrome-debug' 
//                     args '-d -p 4444:4444 -p 59000:59000 --name selenium'
//                 }
//             }
//             steps {
//                 sh 'echo success'
//             }
//         }
//         stage('Ruby') {
//             agent {
//                 docker {
//                     image 'ruby'
//                 }
//             }
//             steps {
//                 sh 'bundle install'
//                 sh 'bundle exec cucumber -p ci'
//             }
//         }
//     }
// }