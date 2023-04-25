pipeline {
  agent any
  enviroment{
    RELEASE_VERSION = "1.2.4"
    
  }
  stages {
    stage('bumping the version after commit'){
      steps{
        sh $RELEASE_VERSION=env.RELEASE_VERSION | awk -F. '/[0-9]+\./{$NF++;print}' OFS=.
      }
    }
    stage('printing the new version'){
      steps{
        sh echo env.RELEASE_VERSION
      }
    }
  }
}
