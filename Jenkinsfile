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
        stage ("terraform destroy") {
            steps {
                sh 'terraform destroy --auto-approve'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
       
        stage ("terraform validate") {
            steps {         
                sh 'terraform validate'          
            }
        }
        stage ("terrafrom plan") {
            steps {         
                sh  'terraform plan'
            }
        }
        stage ("terraform apply") {
            steps { 
                sh label: '', script: 'terraform apply --auto-approve'   
                }
            }  
        }
}
