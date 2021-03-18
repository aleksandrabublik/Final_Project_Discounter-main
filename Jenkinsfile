pipeline {
    agent any
    tools { 
        maven 'Maven 3.3.9' 
        jdk 'jdk8' 
    }
    stages {
        stage ('Initialize') {
            steps {
                sh git branch: 'main', url: 'https://github.com/aleksandrabublik/Final_Project_Discounter-main'
            }
        }

         stage('Build') {
            steps {
                    sh "npm install -g serve"
                }
        }
        
        stage('DeployMaven') {
            steps {
                    sh "serve -s build"
                }
            }
    }
}
