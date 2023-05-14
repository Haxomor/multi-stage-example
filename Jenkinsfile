pipeline {
    agent any
    environment {
        VERSION_NUMBER = '1.0.0'
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
                    def parts = VERSION_NUMBER.split('.')
                
                    // Increment the last part of the version number
                    parts[2] = (parts[2] as int) + 1
                
                    // Join the parts back into a single string
                    VERSION_NUMBER = parts.join('.')
                
                    // Print the new version number
                    echo "New version number: ${VERSION_NUMBER}"
                    }
                }
            }
        }
    }
