pipeline {
    agent any
    
    stages {
        stage('Update File Content') {
            steps {
                script {
                    def script = 'example.txt'
                    
                    // Call the bash function to update the file content
                    sh "updateFileContent ${script}"
                }
            }
        }
    }
    
    post {
        always {
            cleanUp()
        }
    }
}

