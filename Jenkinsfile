pipeline {
    agent any

stages {
    stage('Checkout') {
        steps{
            git 'https://github.com/Prakriti271292/terraform-project.git'
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
            sh 'terraform apply'
        }
    }
}
}
