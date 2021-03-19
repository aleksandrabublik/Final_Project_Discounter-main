
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
		 sh 'npm run build'
	     }
	 }
    }
}
System.setProperty("org.jenkinsci.plugins.durabletask.BourneShellScript.HEARTBEAT_CHECK_INTERVAL", "86400")
