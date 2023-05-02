pipeline {
    agent any
    
    environment {
        // Set the initial version number to 1.0.0
        VERSION_NUMBER = '1.0.0'
    }
    
    stages {
        stage('Build') {
            steps {
                // Checkout the code from the repository
                checkout scm
                
                // Build your code here
                
                // If the build is successful, bump the version number
                script {
                    // Split the version number into an array
                    def versionArray = env.VERSION_NUMBER.split('\\.')
                    echo ${versionArray}
                    // Increment the patch version number
                    def patchVersion = versionArray[2].toInteger() + 1
                    echo ${patchVersion}
                    
                    versionArray[2] = patchVersion.toString()
                    echo ${versionArray}
                    
                    // Join the version number array back into a string
                    env.VERSION_NUMBER = versionArray.join('.')
                    
                    echo "New version number is ${env.VERSION_NUMBER}"
                }
            }
        }
    } 
}
