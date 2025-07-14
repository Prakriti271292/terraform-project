pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
    }
stages {
    stage('Checkout') {
        steps{
            git branch: 'main', url: 'https://github.com/Prakriti271292/terraform-project.git'
        }
    }
    stage('initialise') {
        steps{
            sh 'terraform init'
        }
    }
    stage('plan') {
        steps{
            sh 'terraform plan'
        }
    }
    stage('apply') {
        steps{
            sh '/terraform apply'
        }
    }
}
}
