pipeline {
    agent any

    options {
        skipDefaultCheckout() // Skip default checkout to have full control over environment variables
    }

    stages {
        stage('Initialize') {
            steps {
                script {
                    // Prompt for user input to set the initial Version
                    env.Version = input message: 'What is the version', parameters: [string(defaultValue: env.Version, description: 'Enter Version', name: 'Version')]
                }
            }
        }
        
        stage('Build') {
            steps {
                script {
                    sh 'docker build  -t "denis:1.0.0"'
                    sh 'docker images'
                }
            }
        }

        // Add more stages as needed
    }

    post {
        success {
            script {
                def versionParts = env.Version.split('\\.')
                def major = versionParts[0] as int
                def minor = versionParts[1] as int
                def patch = versionParts[2] as int
                patch++
                def versio = "${major}.${minor}.${patch}"
                echo "${versio}"
                env.Version = "${versio}"
                echo "Updated Version: ${env.Version}"
            }
        }
    }
}
