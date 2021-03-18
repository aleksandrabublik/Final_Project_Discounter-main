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

         stage('BuildMaven') {
            steps {
                    sh "mvn compile"
                }
        }
        
        stage('DeployMaven') {
            steps {
                    sh "mvn package"
                }
            }
    }
}
