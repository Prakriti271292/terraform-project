pipeline {
    agent any

stages {
    stage('Checkout') {
        steps{
            git branch: 'main', url: 'https://github.com/Prakriti271292/terraform-project.git'
        }
    }
    stage('initialise') {
        steps{
            sh '/usr/bin/terraform init'
        }
    }
    stage('plan') {
        steps{
            sh '/usr/bin/terraform plan'
        }
    }
    stage('apply') {
        steps{
            sh '/usr/bin/terraform apply'
        }
    }
}
}
