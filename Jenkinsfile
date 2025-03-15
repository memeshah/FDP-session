pipeline {
    agent any
    
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/memeshah/FDP-session.git', branch: 'main'
            }
        }
        
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        
        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }
        
        stage('Docker Build') {
            steps {
                script {
                    bat 'docker build -t FDP-session .'
                }
            }
        }
        
    }
    
    post {
        success {
            echo 'Pipeline completed successfully! '
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}