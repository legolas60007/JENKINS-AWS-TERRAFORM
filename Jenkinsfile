@Library('github.com/releaseworks/jenkinslib') _
pipeline {
    agent any
    tools{
        terraform 'terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                sh 'echo Checkout Correcto' 
            }
        }
      stage("List S3 buckets") {
            withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AKIAQ6PTDCDQVUMEGTOY', passwordVariable: 'liKXC7bjcVZObWxqWPvZGgAj67F7VJn26sp88Fvc']]) {
        AWS("--region=eu-west-1 s3 ls")
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
