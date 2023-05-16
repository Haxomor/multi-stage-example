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
                version = "1.0.0"
                def command = "bash -c 'source ./script.sh && echo $updated_version'"
                def process = command.execute(null, new File("./"))
                process.waitFor()
                def updatedVersion = process.text.trim()

                println "Updated version: $updatedVersion"

                    }
                } 
            }    
        }

