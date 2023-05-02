pipeline {
    agent any
    
    environment {
        // Initialize the version number
        VERSION_NUMBER = "1.0.0"
    }
    
    stages {
        stage('Build') {
            steps {
                // Build your code here
            }
        }
        
        stage('Increment Version Number') {
            when {
                // Only run this stage if there is a change in the code
                changeset ".*"
            }
            
            steps {
                // Split the version number into an array of parts
                def parts = VERSION_NUMBER.split('.')
                
                // Increment the last part of the version number
                parts[2] = (parts[2] as int) + 1
                
                // Join the parts back into a single string
                VERSION_NUMBER = parts.join('.')
                
                // Print the new version number
                echo "New version number: ${VERSION_NUMBER}"
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy your code here
            }
        }
    }
}
