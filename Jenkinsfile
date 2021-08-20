pipeline {
    agent any
    tools {
      maven 'mvn_3.8.1'
    }

    stages {
        stage ('Checkout Java Code'){
          steps{
            git branch: 'main', credentialsId: 'GIT_CREDENTIALS', url: 'https://github.com/prasannapadole/jenkins.git'
          }
        }
        stage('Build Package') {
          steps {
            sh 'mvn clean package'
          }
          post {
            always {
              archive 'target/devops.war'
            }
          }
        }
        stage('How are you?') {
            steps {
                echo 'How are you?'
            }
        }
        stage ('SAST'){
          parallel{
            stage ('sonar-scan'){
              steps {
                echo 'Running Sonar Scan'
              }
            }
            stage ('synk-scan'){
              steps {
                echo 'Synk scan'
              }
            }
            stage ('DC'){
              steps {
                echo 'Running Dependency Check'
              }
            }
          }
        }
    }
}
