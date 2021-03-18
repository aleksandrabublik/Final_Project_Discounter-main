pipeline {
    agent any
    tools { 
        image 'node:6-alpine'  
    }
    stages {
        stage('build') { 
            steps {
                sh 'npm install -g serve' sh 'serve -s build' 
            } 
        }
