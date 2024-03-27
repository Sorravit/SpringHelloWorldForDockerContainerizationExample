pipeline {
    agent {label 'docker'}

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
                sh "sh run.sh build_docker"
            }
        }
        stage('List file') {
            steps {
                sh "ls"
            }
        }
    }
}
