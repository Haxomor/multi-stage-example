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
                    
                    // Increment the patch version number
                    def patchVersion = versionArray[2].toInteger() + 1
                    versionArray[2] = patchVersion.toString()
                    
                    // Join the version number array back into a string
                    env.VERSION_NUMBER = versionArray.join('.')
                    
                    echo "New version number is ${env.VERSION_NUMBER}"
                }
            }
        }
    }
    
    post {
        success {
            // If the build was successful, commit the new version number to the repository
            script {
                sh "git config --global user.email 'jenkins@mycompany.com'"
                sh "git config --global user.name 'Jenkins'"
                sh "git commit -am 'Bump version number to ${env.VERSION_NUMBER}'"
                sh "git push origin HEAD:${env.BRANCH_NAME}"
            }
        }
        failure {
            // If the build failed, revert the version number change
            script {
                sh "git checkout ."
            }
        }
    }
}
