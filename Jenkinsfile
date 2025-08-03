pipeline {
    agent any

    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Select the action to perform'
        )
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ashish-repository/EKS-Cluster-Terraform.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -reconfigure'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file="terraform.tfvars"'
            }
        }

        stage('Terraform Action') {
            steps {
                script {
                    switch (params.ACTION) {
                        case 'apply':
                            echo 'Executing Terraform Apply...'
                            sh 'terraform apply -var-file="terraform.tfvars" --auto-approve'
                            break
                        case 'destroy':
                            echo 'Executing Terraform Destroy...'
                            sh 'terraform destroy -var-file="terraform.tfvars" --auto-approve'
                            break
                        default:
                            error 'Unknown action'
                    }
                }
            }
        }
    }
}
