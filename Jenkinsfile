pipeline {
    agent any

    stages {
        stage('lint') {
            steps {
                echo "I'm using lint here"
            }
        }
        stage('test') {
            steps {
                echo "Testing from Jenkinsfile"
            }
        }
        stage('Build') {
            steps {
                echo "Building . . . ."
                sleep 10
                echo "Building . . . . complete"
            }
        }
        stage('List file') {
            steps {
                sh "ls"
            }
        }
    }
}
