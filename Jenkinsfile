pipeline {
    tools {
        maven 'Maven3'
    }

    agent any
    environment {
        registry = "account_id/name_of_repo"
    }

    stages {
        stage ('Clone Repo') {
            steps {
                // checkout code from GitHub here
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