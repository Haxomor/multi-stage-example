pipeline {
    agent any
    
    environment {
        // Set the initial version number to 1.0.0
        VERSION_NUMBER = '1.0.0'
    }
    
    stages {
        stage('Build') {
            steps {
                // Build your code here
                
                // If the build is successful, bump the version number
                script {
                    // Split the version number into an array
                    def versionArray = env.VERSION_NUMBER.split('\\.')
                    
                    // Increment the patch version number
                    versionArray[2] = (versionArray[2] as Integer) + 1
                    
                    // Join the version number array back into a string
                    env.VERSION_NUMBER = versionArray.join('.')
                    
                    echo "New version number is ${env.VERSION_NUMBER}"
                }
            }
        }
    }
}
