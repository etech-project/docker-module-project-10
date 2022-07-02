pipeline {
    tools {
        maven 'maven'
    }

    agent any
    environment {
        registry = "658455600470.dkr.ecr.us-east-2.amazonaws.com/docker-devsecops-bros"
    }

    stages {
        stage ('Clone Repo') {
            steps {
            checkout([$class: 'GitSCM', 
            branches: [[name: '*/feature/eukoha']], 
            extensions: [], 
            userRemoteConfigs: [[credentialsId: '8d289e62-9a3c-47f9-b51f-418794f5a7db', 
            url: 'https://github.com/etech-project/docker-module-project-10.git']]])
            }
        }

        stage ('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage ('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }

        stage ('Pushing to ECR') {
            steps {
                script {
                    sh 'aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 658455600470.dkr.ecr.us-east-2.amazonaws.com'
                }
            }
        }

        stage ("Docker Run") {
            steps {
                script {
                    dockerImage.run("-p 3000:5000 --rm --name docker-devsecops-bros")
                }
            }
        }
    }

}