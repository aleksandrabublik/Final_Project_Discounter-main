pipeline {
    agent any
    tools { 
        maven 'Maven 3.3.9' 
        jdk 'jdk8' 
    }
    stages {
        stage ('Initialize') {
            steps {
                sh git branch: 'mvn clean'
            }
        }
        stage ('Install') {
            steps {
                sh git branch: 'mvn install'
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
