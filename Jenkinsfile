pipeline {
    agent any
    environment {
        VERSION_NUMBER = '1'
    }
    stages {
        stage('Build') {
            steps { 
                echo "Builder"
                // Build your code here
            }
        }
    }
    post {
        always {
            script {
                if (currentBuild.result == 'SUCCESS') {
                    VERSION_NUMBER = VERSION_NUMBER.toInteger() + 1
                }
                echo "New version number is ${VERSION_NUMBER}"
            }
        }
    }
}
