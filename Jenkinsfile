@Library('github.com/releaseworks/jenkinslib') _

pipeline {
    agent any
    tools{
        terraform 'terraform'
    }
    node {
        stage("List S3 buckets") {
             withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                  AWS("--region=eu-west-1 s3 ls")
    }
  }
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
