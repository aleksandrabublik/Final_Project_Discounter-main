pipeline {
    agent any
    }
    stages {
        stage ('Prepare environment') {
            git branch: 'main', url: 'https://github.com/aleksandrabublik/Final_Project_Discounter-main'
      
        }
    }
        stage ('Start'){
		    nodejs(nodeJSInstallationName: 'Node') {
                sh 'npm install'
            }
        }
                
         stage ('Runs the app'){
		    nodejs(nodeJSInstallationName: 'Node') {
                sh 'npm start'
        
            }
         }
        stage('build') { 
            steps {
                sh 'npm run build' 
            } 
        }
