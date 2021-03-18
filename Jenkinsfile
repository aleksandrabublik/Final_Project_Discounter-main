#!/usr/bin/env groovy
pipeline {
  agent any

    stages {
        stage('Checkout SCM'){
           steps{
		git branch: 'main', url: 'https://github.com/aleksandrabublik/Final_Project_Discounter-main'
			}     
        }

        stage('Install modules'){
            steps {
                sh "npm start"
            }
        }

        stage('Build'){
            steps {
                    sh "npm run build"
                   
            }    
        }
        }
}
  

