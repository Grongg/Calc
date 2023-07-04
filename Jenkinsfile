pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'make build'
            }
        }
        stage('Test') {
            steps {
                sh 'make test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'make fclean'
                sh 'docker build -t calc .'
                sh 'docker run calc'
            }
        }
    }
}
