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
                def version = System.getenv('VERSION_NUMBER')
                if (version) {
                    def parts = version.split('\\.')
                    if (parts.size() > 0) {
                        def lastPart = parts[-1].toInteger()
                        lastPart++
                        parts[-1] = lastPart.toString()
                        def bumpedVersion = parts.join('.')
                        println "Bumped version: $bumpedVersion"
                        // Update the environment variable
                        System.setEnv('VERSION_NUMBER', bumpedVersion)
                                }
                } else {
                    println "Version environment variable not found."
                        }
                }    
            }
        }
    }

