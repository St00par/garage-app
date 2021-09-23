pipeline {
    agent any
    stages {
        stage('Clone or Fetch Repo') {
            steps {
                sh 'git fetch https://github.com/St00par/garage-app.git'
            }
        }
        stage('Maven Install') {
            agent {
                docker {
                    image 'maven:3.5.0'
                        }
                }   
            steps {
                sh 'mvn clean install'
                }
        }
        stage('Run My Jar Jar Binks') {
            steps {
                sh 'sudo docker-compose pull && sudo docker-compose up -d.'
            }
        }
    }
}