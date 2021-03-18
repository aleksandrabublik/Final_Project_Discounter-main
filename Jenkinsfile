pipeline {
    agent {
        docker {
            image 'node:6-alpine'
        }
    }
    stages {
	    stage ('Prepare environment') {
			steps{
				git branch: 'main', url: 'https://github.com/aleksandrabublik/Final_Project_Discounter-main'
			}
		}
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
	 stage('Deploy'){
	     steps {
		 sh 'npm start'
	     }
	 }
    }
}
