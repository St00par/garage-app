pipeline {
    agent any
    stages {
        stage('Clone or Fetch Repo') {
            steps {
                sh 'git fetch https://github.com/St00par/garage-app.git'
            }
        }
        stage('Build My Jar') {
            steps {
                sh 'sudo apt install docker'
            }
        }
        stage('Run My Jar Jar Binks') {
            steps {
                sh 'sudo docker-compose pull && sudo docker-compose up -d.'
            }
        }
    }
}