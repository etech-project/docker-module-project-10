pipeline {
    tools {
        maven 'maven'
    }

    agent any
    environment {
        registry = "746063145878.dkr.ecr.us-east-2.amazonaws.com/docker-etech"
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
                    sh 'aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 746063145878.dkr.ecr.us-east-2.amazonaws.com'
                }
            }
        }
    }

}