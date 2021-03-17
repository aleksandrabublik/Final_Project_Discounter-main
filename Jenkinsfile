node {
    stage ('Prepare environment') {
        git branch: 'main', url: 'https://github.com/aleksandrabublik/Final_Project_Discounter-main'
      
    }
  stage ('Test'){
    nodejs(nodeJSInstallationName: 'Node') {
        sh 'npm run build'
                }
  }
}
