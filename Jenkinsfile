pipeline{
    agent any
    tools {
        terraform 'terraform'
    }
    stages{
        stage('checkout from GIT'){
            steps{
               git branch: 'main', credentialsId: 'GIT', url: 'https://github.com/Sanju2244/JenkinsCICD.git'
            }
        }
        stage('Terraform Init'){
            steps{
                sh 'mkdir /var/sanjay'
                sh 'cd /var/sanjay/'
                sh 'terraform init'
            }
        }
        stage('Terraform Plan'){
            steps{
                sh 'terraform plan'
            }
        }
         stage('Terraform Apply'){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
        // stage('Terraform Destroy'){
        //     steps{
        //         sh 'terraform destroy --auto-approve'
        //     }
        // }
       
    }
}
