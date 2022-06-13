@Library('github.com/releaseworks/jenkinslib') _

pipeline {
    agent any
    tools{
        terraform 'terraform'
    }
    withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: "credentials-id-here",
    accessKeyVariable: 'AWS_ACCESS_KEY_ID',
    secretKeyVariable: 'AWS_SECRET_ACCESS_KEY'
        ]]) {
    /   / AWS Code
            }
    stages {
        stage ("checkout from GIT") {
            steps {
                sh 'echo Checkout Correcto' 
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
       
        stage ("terraform validate") {
            steps {         
                sh label: '', script: 'terraform validate'          
            }
        }
        stage ("terrafrom plan") {
            steps {         
                sh label: '', script: 'terraform plan'
            }
        }
        stage ("terraform apply") {
            steps {         
                sh label: '', script: 'terraform apply --auto-approve'   
                }
            }  
        }
}
