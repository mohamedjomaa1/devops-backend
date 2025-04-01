pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/mohamedjomaa1/devops-backend.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('Docker Build & Push') {
            steps {
                sh 'docker build -t your-dockerhub-username/devops-backend .'
                sh 'docker push your-dockerhub-username/devops-backend'
            }
        }
    }
}
