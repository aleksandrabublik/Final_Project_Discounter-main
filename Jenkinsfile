pipeline {
  agent any
 	 tools {nodejs "nodejs"}

stages {
    stage ('Prepare environment') {
        git branch: 'main', url: 'https://github.com/aleksandrabublik/Final_Project_Discounter-main'
      
    }
	stage ('Start'){
		nodejs(nodeJSInstallationName: 'Node') {
        sh 'npm install'
                }
	}
		
	stage ('Build'){
		sh 'npm start'
	}
	
	stage('Example') {
        	sh 'npm config ls'
      }
}
}

