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

    stage("Terraform Init") {
      steps {
        sh "terraform init -reconfigure"
      }
    }

    stage("Terraform Plan") {
      steps {
        sh "terraform plan"
      }
    }

    stage("Terraform Action") {
      steps {
        script {
          switch (params.ACTION) {
            case 'apply':
              sh "terraform apply --auto-approve"
              break
            case 'destroy':
              sh "terraform destroy --auto-approve"
              break
            default:
              error 'Unknown action'
          }
        }
      }
    }
  }
}
