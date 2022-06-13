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
        stage ("terraform init") {
            steps {
                sh returnStdout: true, script: 'terraform init'
            }
        }
        stage ("terraform validate") {
            steps {         
                sh returnStdout: true, script: 'terraform validate'          
            }
        }
        stage ("terrafrom plan") {
            steps {         
                sh  returnStdout: true, script: 'terraform plan'
            }
        }
        stage ("terrafrom apply") {
            steps {         
                sh  returnStdout: true, script: 'terraform apply'
            }
        }
    }
}
