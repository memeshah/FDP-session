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
		
		stage('Docker Login') {
			steps {
        bat 'docker login -u memeshah -p Myps@2911'
			}
		}
        
        stage('Docker Build') {
            steps {
                script {
                    bat 'docker build -t fdpsession .'
                }
            }
        }
		
		stage('Push Docker Image') {
            steps {
                bat 'docker push fdpsession:latest'
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