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
                def bumpVersion() {
    def version = System.getenv('VERSION')
    if (version) {
        def parts = version.split('\\.')
        if (parts.size() > 0) {
            def lastPart = parts[-1].toInteger()
            lastPart++
            parts[-1] = lastPart.toString()
            def bumpedVersion = parts.join('.')
            println "Bumped version: $bumpedVersion"
            // Update the environment variable
            System.setEnv('VERSION', bumpedVersion)
        }
    } else {
        println "Version environment variable not found."
    }
}
            }
        }
    }
}
