pipeline {
  agent any
  enviroment{
    RELEASE_VERSION = "1.2.4"
    
  }
  stages {
    stage('bumping the version after commit'){
      steps{
      }
    }
    stage('printing the new version'){
      steps{
        sh echo env.RELEASE_VERSION
      }
    }
  }
}
