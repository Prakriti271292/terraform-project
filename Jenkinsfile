pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
        TF_VAR_from_port = 22 
        TF_VAR_to_port = 22
    }
    options {
        timestamps()
        //ansiColor('xterm')
    }
stages {
    stage('Checkout') {
        steps{
            //git branch: 'main', url: 'https://github.com/Prakriti271292/terraform-project.git'
            checkout scm
        }
    }
    stage('initialise') {
        steps{
            sh 'terraform init'
        }
    }
    stage('plan') {
        steps{
            sh '''terraform plan -var-file= terraform.tfvars -var="igw_name=chochu-gateway"'''
        }
    }
    stage('approval') {
        steps{
            script{
                def userInput = input(id:'confirm', message: 'Apply Terraform')
            }
        }
    }
    stage('apply') {
        steps{
            sh 'terraform apply -auto-approve'
        }
    }
}
}
