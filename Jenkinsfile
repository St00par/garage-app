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
                sh 'sudo apt install maven'
                sh 'mvn clean package -e'
            }
        }
        stage('Run My Jar Jar Binks') {
            steps {
                sh 'java -jar target/Garage-0.0.1.jar &'
            }
        }
    }
}